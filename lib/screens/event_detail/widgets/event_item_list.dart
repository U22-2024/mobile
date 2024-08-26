import 'package:flutter/material.dart';
import 'package:mobile/domain/event/event_model.dart';

class EventItemList extends StatelessWidget {
  const EventItemList({super.key, required this.event});

  final EventModel event;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Expanded(
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                children: [
                  Icon(Icons.person,
                      color: theme.colorScheme.onPrimaryContainer),
                  const SizedBox(width: 16),
                  Text("詳細", style: theme.textTheme.labelLarge),
                ],
              ),
              const SizedBox(height: 8),
              Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, idx) {
                    final isUserItem = idx >= event.items.length;
                    return ListTile(
                      title: Text(
                        isUserItem
                            ? event.userItems[idx - event.items.length].value
                            : event.items[idx].value,
                      ),
                      leading: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.radio_button_unchecked),
                      ),
                      trailing: isUserItem
                          ? IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.edit),
                            )
                          : null,
                    );
                  },
                  separatorBuilder: (context, idx) =>
                      idx == event.items.length - 1
                          ? const SizedBox(
                              height: 32,
                              child: Row(
                                children: [
                                  SizedBox(width: 16),
                                  Expanded(child: Divider()),
                                  SizedBox(width: 16),
                                  Text("メモ"),
                                  SizedBox(width: 16),
                                  Expanded(child: Divider()),
                                  SizedBox(width: 16),
                                ],
                              ),
                            )
                          : const Padding(
                              padding: EdgeInsets.only(left: 72, right: 16),
                              child: Divider(),
                            ),
                  itemCount: event.items.length + event.userItems.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
