import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/domain/event/event_model.dart';
import 'package:mobile/domain/event/event_repository.dart';
import 'package:mobile/presentation/widgets/event_card.dart';
import 'package:skeletonizer/skeletonizer.dart';

class EventListScreen extends ConsumerWidget {
  const EventListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final events = ref.watch(eventRepositoryProvider);
    List<EventModel> eventValues = events.when(
      data: (data) => data,
      error: (err, stackTrace) => [],
      loading: () => List.filled(5, EventModel.empty()),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('イベント一覧'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Skeletonizer(
          enabled: events.isLoading,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: eventValues.length,
            itemBuilder: (context, index) =>
                EventCard(event: eventValues[index]),
          ),
        ),
      ),
    );
  }
}
