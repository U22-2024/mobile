import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/domain/remind/remind_groups.dart';
import 'package:mobile/presentation/components/expandable_fab/expandable_fab.dart';
import 'package:mobile/proto/remind/v1/remind_group.pbgrpc.dart';

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
          _NewGroupActionButton(),
        ],
      ),
    );
  }
}

class _BoardView extends HookConsumerWidget {
  Iterable<Widget> _buildBoards(
      BuildContext context, List<RemindGroup> groups) {
    return groups.map((group) {
      return _RemindGroupCard(group: group);
    });
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final groups = ref.watch(remindGroupsProvider);

    final theme = Theme.of(context);
    return Row(
      children: _buildBoards(context, groups).toList(),
    );
  }
}

class _RemindGroupCard extends StatelessWidget {
  final RemindGroup group;

  const _RemindGroupCard({required this.group});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(group.title),
          Text(group.description),
        ],
      ),
    );
  }
}

class _NewGroupActionButton extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final groups = ref.watch(remindGroupsProvider.notifier);

    return ActionButton(
      icon: const Icon(Icons.create_new_folder_rounded),
      label: const Text('新しいグループ'),
      onPressed: () {
        groups.add("Default Group", "Default Description");
      },
    );
  }
}
