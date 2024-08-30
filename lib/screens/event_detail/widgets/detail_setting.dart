import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/domain/event/event_model.dart';
import 'package:mobile/domain/event/event_repository.dart';

class DetailSetting extends ConsumerWidget {
  const DetailSetting({
    super.key,
    required this.eventId,
  });

  final EventModelId eventId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final menuActions = [
      _MenuAction(
        title: "イベントを削除",
        icon: Icons.delete,
        onTap: () async {
          await ref.read(eventRepositoryProvider.notifier).delete(eventId);
          if (!context.mounted) return;
          Navigator.of(context).pop();
        },
      ),
    ];

    return SizedBox(
      width: 58,
      child: PopupMenuButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        icon: const Icon(Icons.more_vert_rounded),
        itemBuilder: (context) => menuActions
            .map(
              (action) => PopupMenuItem(
                onTap: action.onTap,
                child: ListTile(
                  title: Text(action.title),
                  leading: Icon(action.icon),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

class _MenuAction {
  final String title;
  final IconData icon;
  final void Function() onTap;

  _MenuAction({
    required this.title,
    required this.icon,
    required this.onTap,
  });
}
