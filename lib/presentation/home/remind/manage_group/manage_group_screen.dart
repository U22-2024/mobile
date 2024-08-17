import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/domain/remind/remind_groups.dart';
import 'package:mobile/presentation/home/remind/create_group/create_group_screen.dart';

class ManageGroupScreen extends HookConsumerWidget {
  const ManageGroupScreen({super.key});

  static const routeLocation = "manage_group";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('リマインドグループを管理'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _RemindGroupsCard(),
            const SizedBox(height: 16),
            _CreateRemindGroupButton(),
          ],
        ),
      ),
    );
  }
}

class _RemindGroupsCard extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final groups = ref.watch(remindGroupsProvider);

    if (groups.isEmpty) {
      return const SizedBox(
        width: double.infinity,
        child: Card(
          margin: EdgeInsets.all(8),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Text("新しいリマインドグループを作って、リマインドを管理しましょう！"),
          ),
        ),
      );
    }

    return Card(
      margin: const EdgeInsets.all(8),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 400),
        child: ListView.separated(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          separatorBuilder: (context, idx) => const Padding(
            padding: EdgeInsets.symmetric(horizontal: 64),
            child: Divider(),
          ),
          itemCount: groups.length,
          itemBuilder: (context, idx) {
            final group = groups[idx];
            return ListTile(
              onTap: () {
                showEditModal(context, group, ref);
              },
              title: Row(
                children: [
                  Icon(RemindGroupModal.icons.firstWhere(
                    (icon) => icon.codePoint == group.icon.codePoint,
                    orElse: () => RemindGroupModal.icons.first,
                  )),
                  const SizedBox(width: 16),
                  Text(group.title),
                ],
              ),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("削除しますか？"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text("キャンセル"),
                        ),
                        TextButton(
                          onPressed: () {
                            if (group.id.isEmpty) {
                              return;
                            }
                            ref
                                .read(remindGroupsProvider.notifier)
                                .remove(group.id);
                            Navigator.of(context).pop();
                          },
                          child: const Text("削除"),
                        ),
                      ],
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

class _CreateRemindGroupButton extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () {
        showCreateModal(context, ref);
      },
      child: const Text("新しいリマインドグループを作成"),
    );
  }
}
