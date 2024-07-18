import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/service/auth/auth_provider.dart';
import 'package:mobile/service/router/router_provider.dart';

class OauthForm extends HookConsumerWidget {
  const OauthForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 50,
          child: ElevatedButton(
            onPressed: () async {
              await ref.read(signInWithGoogleProvider.future);
              if (!context.mounted) return;
              const HomeRoute().go(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/google.png", width: 20, height: 20),
                const SizedBox(width: 16),
                const Text("Googleで登録"),
              ],
            ),
          ),
        )
      ],
    );
  }
}
