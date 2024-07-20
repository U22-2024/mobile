import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PasswordSignInScreen extends HookConsumerWidget {
  const PasswordSignInScreen({super.key});

  static const routeName = "password_sign_in";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => GoRouter.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              "ログイン",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 16),

          ],
        ),
      ),
    );
  }
}
