import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/service/auth/auth_provider.dart';
import 'package:mobile/service/router/router_provider.dart';

class SignInModal extends HookConsumerWidget {
  const SignInModal({super.key});

  Widget _button(
    BuildContext context,
    Widget leading,
    String text,
    Function()? onPressed,
  ) {
    return SizedBox(
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            leading,
            const SizedBox(width: 16),
            Text(
              text,
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _button(
            context,
            Icon(
              Icons.email,
              color: Theme.of(context).iconTheme.color,
            ),
            "Emailでログイン",
            () {
              // モーダルを閉じる
              Navigator.of(context).pop();
              const PasswordSignInRoute().go(context);
            },
          ),
          const SizedBox(height: 8),
          _button(
            context,
            const Image(
              image: AssetImage("assets/images/google.png"),
              width: 20,
              height: 20,
            ),
            "Googleでログイン",
            () async {
              // モーダルを閉じる
              Navigator.of(context).pop();
              try {
                await ref.read(signInWithGoogleProvider.future);
              } catch (err) {
                if (!context.mounted) return;
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text("ログインエラー"),
                    content: const Text("Googleアカウントでのログインに失敗しました"),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text("OK"),
                      )
                    ],
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
