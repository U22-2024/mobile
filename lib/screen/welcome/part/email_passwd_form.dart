import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/screen/welcome/part/password_input_field.dart';
import 'package:mobile/service/auth/auth_provider.dart';

import 'email_input_field.dart';

class EmailPasswdForm extends HookConsumerWidget {
  const EmailPasswdForm({super.key});

  bool _isDuplicateEmail(AsyncSnapshot<void> snapshot) {
    if (snapshot.hasError) {
      final error = snapshot.error;
      if (error is FirebaseAuthException) {
        return error.code == "email-already-in-use";
      }
    }

    return false;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useState(GlobalKey<FormState>());
    final isValid = useState(false);
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final pendingSignIn = useState<Future<void>?>(null);
    final signInSnapshot = useFuture(pendingSignIn.value);

    final isWaiting = signInSnapshot.connectionState == ConnectionState.waiting;
    final hasError = signInSnapshot.hasError && !isWaiting;

    final buttonForeColor = isValid.value
        ? Theme.of(context).colorScheme.onPrimary
        : Theme.of(context).colorScheme.inversePrimary;

    void validate() {
      if (formKey.value.currentState?.validate() == true) {
        formKey.value.currentState?.save();
        isValid.value = true;
      } else {
        isValid.value = false;
      }
    }

    return Form(
      key: formKey.value,
      onChanged: validate,
      child: Column(
        children: [
          EmailInputField(
            isDuplicateEmail: _isDuplicateEmail(signInSnapshot),
            controller: emailController,
          ),
          const SizedBox(height: 16),
          PasswordInputField(controller: passwordController),
          const SizedBox(height: 16),
          if (hasError) ...[
            Text(
              "エラーが発生しました",
              style: TextStyle(color: Theme.of(context).colorScheme.error),
            ),
            const SizedBox(height: 16),
          ],
          SizedBox(
            width: double.infinity,
            height: 48,
            child: ElevatedButton(
              onPressed: !isValid.value || isWaiting
                  ? null
                  : () async {
                      final future = ref.read(
                        createUserWithEmailAndPasswordProvider
                            .call(emailController.text, passwordController.text)
                            .future,
                      );
                      pendingSignIn.value = future;

                      await future;
                      validate();
                    },
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
                overlayColor: Theme.of(context).colorScheme.onPrimary,
              ),
              child: isWaiting
                  ? CircularProgressIndicator(
                      color: buttonForeColor.withOpacity(0.5),
                    )
                  : Text(
                      "登録",
                      style: TextStyle(
                        color: isValid.value
                            ? Theme.of(context).colorScheme.onPrimary
                            : Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
