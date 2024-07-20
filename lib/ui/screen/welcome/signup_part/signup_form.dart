import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/ui/components/text_divider/text_divider.dart';

import 'password_signup_form.dart';
import 'social_signup_form.dart';

class SignUpForm extends HookConsumerWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Column(
      children: [
        PasswordSignUpForm(),
        SizedBox(height: 16),
        TextDivider(text: "OR"),
        SizedBox(height: 16),
        SocialSignUpForm()
      ],
    );
  }
}
