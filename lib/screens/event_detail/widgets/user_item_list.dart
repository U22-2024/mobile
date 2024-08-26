import 'package:flutter/material.dart';
import 'package:mobile/domain/event/event_model.dart';

class EventUserItemList extends StatelessWidget {
  const EventUserItemList({super.key, required this.event});

  final EventModel event;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.person, color: theme.colorScheme.onPrimaryContainer),
                const SizedBox(width: 16),
                Text("メモ", style: theme.textTheme.labelLarge),
              ],
            ),
            const SizedBox(height: 8),
            ConstrainedBox(
              constraints: const BoxConstraints(
                maxHeight: 300,
              ),
              child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, idx) {
                  return ListTile(
                    title: Text(event.userItems[idx].value),
                    leading: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.radio_button_unchecked),
                    ),
                  );
                },
                separatorBuilder: (context, idx) => const Padding(
                  padding: EdgeInsets.only(left: 72, right: 16),
                  child: Divider(),
                ),
                itemCount: event.userItems.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
