import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/domain/remind/remind_groups.dart';
import 'package:mobile/presentation/home/remind/group_modal/remind_group_modal.dart';
import 'package:mobile/proto/remind/v1/remind_group.pbgrpc.dart';

class SelectGroupModal extends HookConsumerWidget {
  final ValueNotifier<RemindGroup> selectedGroup;

  const SelectGroupModal({super.key, required this.selectedGroup});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final groups = ref.watch(remindGroupsProvider);
    final mediaQuery = MediaQuery.of(context);

    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: mediaQuery.size.height * 0.5,
      ),
      child: Card(
        margin: const EdgeInsets.only(right: 8, left: 8, top: 16, bottom: 32),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: ListView.separated(
            shrinkWrap: true,
            separatorBuilder: (context, index) => const Padding(
              padding: EdgeInsets.only(left: 58, right: 16),
              child: Divider(),
            ),
            itemCount: groups.length + 1,
            itemBuilder: (context, index) {
              if (index == groups.length) {
                return ListTile(
                  title: const Text('新しいグループを作成'),
                  leading: const Icon(Icons.add),
                  onTap: () {
                    showCreateModal(context);
                  },
                );
              }

              final group = groups[index];
              return ListTile(
                title: Row(
                  children: [
                    Icon(icons.firstWhere(
                      (icon) => icon.codePoint == group.icon.codePoint,
                      orElse: () => icons.first,
                    )),
                    const SizedBox(width: 16),
                    Text(group.title),
                  ],
                ),
                leading: Icon(group.id == selectedGroup.value.id
                    ? Icons.check_circle
                    : Icons.radio_button_unchecked),
                onTap: () {
                  selectedGroup.value = group;
                  context.pop();
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
