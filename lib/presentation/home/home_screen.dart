import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:mobile/presentation/router/router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const routeLocation = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text('Hello World!'),
            ElevatedButton(
              onPressed: () => const RemindRoute().go(context),
              child: const Text('Reminds'),
            ),
            const SignOutButton(),
          ],
        ),
      ),
    );
  }
}
