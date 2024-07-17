import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/components/text_divider/text_divider.dart';
import 'package:mobile/screen/welcome/part/email_passwd_form.dart';

class RegisterForm extends HookConsumerWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Column(
      children: [
        EmailPasswdForm(),
        SizedBox(height: 16),
        TextDivider(text: "OR"),
        SizedBox(height: 16),
      ],
    );
  }
}
