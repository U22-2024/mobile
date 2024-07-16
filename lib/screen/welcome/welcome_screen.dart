import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class WelcomeScreen extends HookConsumerWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Welcome"),
            const SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(onPressed: () {}, child: const Text("始める")),
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child:
                  ElevatedButton(onPressed: () {},style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.greenAccent,
                  ), child: const Text("ログイン")),
            ),
          ],
        ),
      ),
    );
  }
}
