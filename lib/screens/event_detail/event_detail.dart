import "package:collection/collection.dart";
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/domain/event/event_model.dart';
import 'package:mobile/domain/event/event_repository.dart';

import 'widgets/event_item_list.dart';
import 'widgets/time_table.dart';

class EventDetailScreen extends ConsumerWidget {
  const EventDetailScreen({
    super.key,
    required this.eventId,
  });

  final EventModelId eventId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final events = ref.watch(eventRepositoryProvider);
    final event = events.when(
      data: (data) => data.firstWhereOrNull((e) => e.id == eventId),
      error: (err, stackTrace) => null,
      loading: () => EventModel.empty(),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(event?.title ?? "不明なイベント"),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            if (event != null) ...[
              const SizedBox(height: 20),
              TimeTableView(timeTable: event.timeTable),
              const SizedBox(height: 20),
              EventItemList(event: event),
              const SizedBox(height: 40),
            ],
          ],
        ),
      ),
    );
  }
}
