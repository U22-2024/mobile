import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text('Hello World!'),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Reminds'),
            ),
            const SignOutButton(),
          ],
        ),
      ),
    );
  }
}
