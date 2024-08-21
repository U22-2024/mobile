import 'package:flutter/material.dart';
import 'package:mobile/presentation/widgets/avatar.dart';
import 'package:mobile/screens/home/widgets/advice_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ホーム'),
        actions: const [
          UserAvatar(),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 16),
            AdviceCard(),
          ],
        ),
      ),
    );
  }
}
