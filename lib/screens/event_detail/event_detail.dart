import 'package:flutter/material.dart';
import 'package:mobile/domain/event/event_repository.dart';

class EventDetailScreen extends StatelessWidget {
  const EventDetailScreen({
    super.key,
    required this.eventId,
  });

  final EventModelId eventId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('イベント詳細'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Text('イベント詳細画面です'),
          ],
        ),
      ),
    );
  }
}
