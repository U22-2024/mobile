import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/extensions/firebase_auth/firebase_auth_extension.dart';
import 'package:mobile/repository/user/user_repository.dart';
import 'package:mobile/service/router/router_provider.dart';
import 'package:mobile/service/validator/text_validator/email_validate_result.dart';
import 'package:mobile/service/validator/text_validator/password_validate_result.dart';
import 'package:mobile/service/validator/text_validator/text_validator.dart';
import 'package:mobile/ui/components/custom_input_field/custom_input_field.dart';

class PasswordSignInForm extends HookConsumerWidget {
  const PasswordSignInForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final passwordFocusNode = useFocusNode();

    final emailValidateResult = useState(EmailValidateResult.init());
    final passwordValidateResult = useState(PasswordValidateResult.init());
    final visiblePassword = useState(false);
    final hasFocusPassword = useState(false);
    final formKey = useMemoized(() => GlobalKey<FormState>());

    final signInPending = useState<Future<void>?>(null);
    final signInSnapshot = useFuture(signInPending.value);

    final isValid = emailValidateResult.value.isValid() &&
        passwordValidateResult.value.isValid();
    final isWaiting = signInSnapshot.connectionState == ConnectionState.waiting;
    final hasError = !isWaiting && signInSnapshot.hasError;

    useEffect(() {
      callback() {
        hasFocusPassword.value = passwordFocusNode.hasFocus;
      }

      passwordFocusNode.addListener(callback);

      return () {
        passwordFocusNode.removeListener(callback);
      };
    }, [passwordFocusNode]);

    Future<void> signIn() async {
      if (formKey.currentState?.validate() != true) {
        return;
      }

      try {
        final future = ref
            .read(userRepositoryProvider)
            .signInWithEmailAndPassword(
                emailController.text, passwordController.text);
        signInPending.value = future;

        await future;
        if (!context.mounted) return;
        const HomeRoute().go(context);
      } on FirebaseAuthException catch (e) {
        final status = e.resultStatus();
        if (status == FirebaseAuthResultStatus.userNotFound) {
          emailValidateResult.value = emailValidateResult.value.copyWith(
            emailNotFound: true,
          );
        } else if (status == FirebaseAuthResultStatus.wrongPassword) {
          passwordValidateResult.value = passwordValidateResult.value.copyWith(
            correctPassword: false,
          );
        }
      }
    }

    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomInputField(
            controller: emailController,
            validateMessage: emailValidateResult.value.message(),
            onChanged: (value) {
              emailValidateResult.value = TextValidator.email(value);
            },
            label: "メールアドレス",
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 16),
          CustomInputField(
            controller: passwordController,
            focusNode: passwordFocusNode,
            validateMessage: passwordValidateResult.value.message(),
            onChanged: (value) {
              passwordValidateResult.value =
                  TextValidator.password(value, value);
            },
            label: "パスワード",
            obscureText: !visiblePassword.value,
            suffixIcon: hasFocusPassword.value
                ? IconButton(
                    icon: Icon(visiblePassword.value
                        ? Icons.visibility_off
                        : Icons.visibility),
                    onPressed: () {
                      visiblePassword.value = !visiblePassword.value;
                    },
                  )
                : null,
          ),
          const SizedBox(height: 16),
          if (hasError) ...[
            Text(
              "メールアドレスまたはパスワードが間違っています",
              style: TextStyle(color: Theme.of(context).colorScheme.error),
            ),
            const SizedBox(height: 16),
          ],
          SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: isValid && !isWaiting ? signIn : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: isValid && !isWaiting
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.primary.withOpacity(0.5),
                overlayColor: Theme.of(context).colorScheme.onPrimary,
              ),
              child: isWaiting
                  ? const CircularProgressIndicator()
                  : Text(
                      "ログイン",
                      style: isValid
                          ? Theme.of(context).textTheme.labelLarge?.copyWith(
                              color: Theme.of(context).colorScheme.onPrimary)
                          : null,
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
