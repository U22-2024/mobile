import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/domain/event/event_model.dart';
import 'package:mobile/presentation/router/router.dart';
import 'package:mobile/screens/event_detail/event_detail_route.dart';

class EventCard extends HookConsumerWidget {
  const EventCard({
    super.key,
    required this.event,
  });

  final EventModel event;

  Widget _buildContent(EventModel event, WidgetRef ref) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 400),
      child: ListView.separated(
        shrinkWrap: true,
        separatorBuilder: (context, idx) => const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Divider(),
        ),
        itemCount: event.items.length,
        itemBuilder: (context, idx) {
          final item = event.items[idx];
          return ListTile(
            title: Text(item.value),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {
          const EventDetailRoute(eventId: "").push(context);
        },
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
                  const Spacer(),
                  const Text("タップして詳細を見る"),
                  const SizedBox(width: 8),
                  Icon(
                    Icons.touch_app_rounded,
                    color: theme.colorScheme.onPrimaryContainer,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              _buildContent(event, ref),
            ],
          ),
        ),
      ),
    );
  }
}
