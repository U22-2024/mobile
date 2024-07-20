import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/service/auth/auth_provider.dart';
import 'package:mobile/service/router/router_provider.dart';

class SocialSignUpForm extends HookConsumerWidget {
  const SocialSignUpForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 50,
          child: ElevatedButton(
            onPressed: () async {
              try {
                await ref.read(signInWithGoogleProvider.future);

                if (!context.mounted) return;
                const HomeRoute().go(context);
              } catch (err) {
                if (!context.mounted) return;
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text("アカウント作成エラー"),
                    content: const Text("Googleアカウントでの登録に失敗しました"),
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage("assets/images/google.png"),
                  width: 20,
                  height: 20,
                ),
                const SizedBox(width: 8),
                Text(
                  "Googleでログイン",
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
