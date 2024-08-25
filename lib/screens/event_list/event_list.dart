import 'package:flutter/material.dart';

class EventListScreen extends StatelessWidget {
  const EventListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('イベント一覧'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Text('イベント一覧画面です'),
          ],
        ),
      ),
    );
  }
}
