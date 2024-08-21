import 'package:flutter/material.dart';

class ShoppingScreen extends StatelessWidget {
  const ShoppingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text('Shopping Screen'),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Reminds'),
            ),
          ],
        ),
      ),
    );
  }
}
