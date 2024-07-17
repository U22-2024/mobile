import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/screen/welcome/part/password_input_field.dart';

import 'email_input_field.dart';

class EmailPasswdForm extends HookConsumerWidget {
  const EmailPasswdForm({super.key});

  Function() _onSubmit(String email, String password) {
    return () {};
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useState(GlobalKey<FormState>());
    final isValid = useState(false);

    return Form(
      key: formKey.value,
      child: Column(
        children: [
          const EmailInputField(),
          const SizedBox(height: 16),
          const PasswordInputField(),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            height: 48,
            child: ElevatedButton(
              onPressed: isValid.value ? _onSubmit("", "") : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
                overlayColor: Theme.of(context).colorScheme.onPrimary,
              ),
              child: Text(
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
      onChanged: () {
        if (formKey.value.currentState?.validate() == true) {
          formKey.value.currentState?.save();
          isValid.value = true;
        } else {
          isValid.value = false;
        }
      },
    );
  }
}
