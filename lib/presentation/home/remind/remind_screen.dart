import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/presentation/components/expandable_fab/expandable_fab.dart';

class RemindScreen extends HookConsumerWidget {
  const RemindScreen({super.key});

  static const routeLocation = "remind";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reminds'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _BoardView(),
        ],
      ),
      floatingActionButton: ExpandableFab(
        children: [
          ActionButton(
            icon: const Icon(Icons.create),
            label: const Text('新しい予定'),
            onPressed: () {},
          ),
          ActionButton(
            icon: const Icon(Icons.note_add),
            label: const Text('新しいノート'),
            onPressed: () {},
          ),
          ActionButton(
            icon: const Icon(Icons.create_new_folder_rounded),
            label: const Text('新しいフォルダ'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class _BoardView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Icon(
          Icons.folder_open_rounded,
          size: 80,
          color: theme.colorScheme.secondary,
        )
      ],
    );
  }
}
