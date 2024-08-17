import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/domain/remind/remind_groups.dart';
import 'package:mobile/proto/remind/v1/remind_group.pb.dart' as $pb;

const icons = [
  Icons.home,
  Icons.star,
  Icons.favorite,
  Icons.person,
  Icons.settings,
  Icons.camera_alt,
  Icons.pets,
  Icons.school,
];

final _formKey = GlobalKey<FormState>();

Future<void> showCreateModal(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (context) {
      return const _Modal();
    },
  );
}

Future<void> showEditModal(BuildContext context, $pb.RemindGroup group) {
  return showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (context) {
      return _Modal(groupToEdit: group);
    },
  );
}

class _Modal extends HookConsumerWidget {
  final $pb.RemindGroup? groupToEdit;

  const _Modal({this.groupToEdit});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mediaQuery = MediaQuery.of(context);
    final height = max(400, mediaQuery.size.height * 0.5);
    final titleController = useTextEditingController(text: groupToEdit?.title);
    final iconIdx = useState(
      groupToEdit != null
          ? icons.indexWhere((e) => e.codePoint == groupToEdit!.icon.codePoint)
          : 0,
    );

    createRemindGroup() {
      ref.read(remindGroupsProvider.notifier).add(
          titleController.text,
          $pb.IconData(
            codePoint: icons[iconIdx.value].codePoint,
            fontFamily: icons[iconIdx.value].fontFamily,
          ));
    }

    editRemindGroup() {
      if (groupToEdit == null) return;
      ref.read(remindGroupsProvider.notifier).update($pb.RemindGroup(
          id: groupToEdit!.id,
          title: titleController.text,
          icon: $pb.IconData(
            codePoint: icons[iconIdx.value].codePoint,
            fontFamily: icons[iconIdx.value].fontFamily,
          )));
    }

    return Form(
      key: _formKey,
      child: Container(
        height: height + mediaQuery.viewInsets.bottom,
        padding: const EdgeInsets.only(top: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 16),
              _GroupTitleField(
                titleController: titleController,
                iconData: icons[iconIdx.value],
              ),
              const SizedBox(height: 16),
              _IconSelector(iconIdx: iconIdx),
              const SizedBox(height: 16),
              _ButtonGroup(actions: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("キャンセル"),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (!(_formKey.currentState?.validate() ?? false)) {
                      return;
                    }
                    if (groupToEdit != null) {
                      editRemindGroup();
                    } else {
                      createRemindGroup();
                    }
                    Navigator.of(context).pop();
                  },
                  child: Text(groupToEdit == null ? "作成" : "保存"),
                )
              ]),
            ],
          ),
        ),
      ),
    );
  }
}

class _GroupTitleField extends HookConsumerWidget {
  final TextEditingController titleController;
  final IconData iconData;

  const _GroupTitleField({
    required this.titleController,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        height: 80,
        child: Stack(
          children: [
            Align(
              alignment: const Alignment(0, -2.5),
              child: Material(
                shape: const CircleBorder(),
                color: theme.colorScheme.secondary,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Icon(
                    iconData,
                    size: 30,
                    color: theme.colorScheme.onSecondary,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextFormField(
                controller: titleController,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "グループ名を入力してください";
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: "グループ名",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _IconSelector extends StatelessWidget {
  final ValueNotifier<int> iconIdx;

  const _IconSelector({required this.iconIdx});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        child: Wrap(
          children: icons.indexed.map(
            (elem) {
              final icon = elem.$2;
              final idx = elem.$1;
              return IconButton(
                icon: Icon(icon, size: 30),
                onPressed: () {
                  iconIdx.value = idx;
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    iconIdx.value == idx
                        ? Colors.blue.withOpacity(0.3)
                        : Colors.transparent,
                  ),
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}

class _ButtonGroup extends HookConsumerWidget {
  final List<Widget> actions;

  const _ButtonGroup({required this.actions});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 20,
      children: actions,
    );
  }
}
