import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/domain/event/event_item_repository.dart';
import 'package:mobile/domain/event/event_repository.dart';
import 'package:skeletonizer/skeletonizer.dart';

class EventCard extends HookConsumerWidget {
  const EventCard({
    super.key,
    required this.event,
  });

  final EventModel event;

  Widget _buildContent(EventModel event, WidgetRef ref) {
    final eventItems = ref.watch(eventItemsByEventProvider.call(event.id));
    final items = eventItems.when(
      data: (data) => data,
      error: (err, stackTrace) => [],
      loading: () => List.filled(
        2,
        EventItemModel(
          id: const EventItemModelId('loading'),
          eventId: event.id,
          startAt: DateTime.now(),
          title: 'Loading...',
          description: 'Loading...',
        ),
      ),
    );

    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 400),
      child: Skeletonizer(
        enabled: eventItems.isLoading,
        child: ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (context, idx) => const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Divider(),
          ),
          itemCount: items.length,
          itemBuilder: (context, idx) {
            final item = items[idx];
            return ListTile(
              title: Text(item.title),
            );
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.calendar_today_rounded,
                  color: theme.colorScheme.onPrimaryContainer,
                ),
                const SizedBox(width: 16),
                Text(
                  event.title,
                  style: theme.textTheme.labelLarge,
                ),
              ],
            ),
            const SizedBox(height: 16),
            _buildContent(event, ref),
          ],
        ),
      ),
    );
  }
}
