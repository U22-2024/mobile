import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/screen/welcome/part/register_form.dart';

class AuthRegisterScreen extends HookConsumerWidget {
  const AuthRegisterScreen({super.key});

  static const routeName = "register";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
        icon: const Icon(Icons.close),
        onPressed: () => GoRouter.of(context).pop(),
      )),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              "アカウントを作成",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 16),
            const RegisterForm(),
          ],
        ),
      ),
    );
  }
}
