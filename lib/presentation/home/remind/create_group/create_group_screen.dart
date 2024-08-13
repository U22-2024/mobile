import 'dart:math';

import 'package:flutter/material.dart' hide IconData;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/domain/remind/remind_groups.dart';
import 'package:mobile/proto/remind/v1/remind_group.pb.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_group_screen.freezed.dart';
part 'create_group_screen.g.dart';

@riverpod
class RemindGroupModal extends _$RemindGroupModal {
  static const icons = [
    Icons.home,
    Icons.star,
    Icons.favorite,
    Icons.person,
    Icons.settings,
    Icons.camera_alt,
    Icons.pets,
    Icons.school,
  ];

  @override
  State build() {
    return State(
      title: TextEditingController(),
      iconIdx: 0,
    );
  }

  void reset() {
    state = State(
      title: TextEditingController(),
      iconIdx: 0,
    );
  }

  set iconIdx(int idx) {
    state = state.copyWith(iconIdx: idx);
  }

  Future<void> _create() async {
    final groups = ref.read(remindGroupsProvider.notifier);

    await groups.add(
      state.title.text,
      IconData(
        codePoint: icons[state.iconIdx].codePoint,
        fontFamily: icons[state.iconIdx].fontFamily,
      ),
    );
    reset();
  }

  Future<void> _update(RemindGroup group) async {
    final groups = ref.read(remindGroupsProvider.notifier);

    await groups.update(
      RemindGroup(
        id: group.id,
        title: state.title.text,
        icon: IconData(
          codePoint: icons[state.iconIdx].codePoint,
          fontFamily: icons[state.iconIdx].fontFamily,
        ),
      ),
    );
    reset();
  }

  Future showCreateModal(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return _Screen(
          actions: [
            ElevatedButton(
              onPressed: () {
                ref.read(remindGroupModalProvider.notifier).reset();
                Navigator.of(context).pop();
              },
              child: const Text("キャンセル"),
            ),
            ElevatedButton(
              onPressed: () {
                ref.read(remindGroupModalProvider.notifier)._create();
                Navigator.of(context).pop();
              },
              child: const Text("作成"),
            ),
          ],
        );
      },
    );
  }

  Future showEditModal(BuildContext context, RemindGroup group) async {
    state = state.copyWith(
      title: TextEditingController(text: group.title),
      iconIdx: icons.indexWhere(
        (icon) => icon.codePoint == group.icon.codePoint,
      ),
    );

    await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return _Screen(
          actions: [
            ElevatedButton(
              onPressed: () {
                ref.read(remindGroupModalProvider.notifier).reset();
                Navigator.of(context).pop();
              },
              child: const Text("キャンセル"),
            ),
            ElevatedButton(
              onPressed: () {
                ref.read(remindGroupModalProvider.notifier)._update(group);
                Navigator.of(context).pop();
              },
              child: const Text("保存"),
            ),
          ],
        );
      },
    );
    reset();
  }
}

/// リマインドグループ作成スクリーン
class _Screen extends HookConsumerWidget {
  final List<Widget> actions;

  const _Screen({required this.actions});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mediaQuery = MediaQuery.of(context);
    final height = max(400, mediaQuery.size.height * 0.5);

    return Container(
      height: height + mediaQuery.viewInsets.bottom,
      padding: const EdgeInsets.only(top: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),
            _GroupTitleField(),
            const SizedBox(height: 16),
            _IconSelector(),
            const SizedBox(height: 16),
            _ButtonGroup(actions: actions),
          ],
        ),
      ),
    );
  }
}

@freezed
class State with _$State {
  const factory State({
    required TextEditingController title,
    required int iconIdx,
  }) = _State;
}

class _GroupTitleField extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final iconIdx = ref.watch(remindGroupModalProvider).iconIdx;
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
                    RemindGroupModal.icons[iconIdx],
                    size: 30,
                    color: theme.colorScheme.onSecondary,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                controller: ref.read(remindGroupModalProvider).title,
                decoration: const InputDecoration(
                  labelText: "グループ名",
                  hintText: "グループ名を入力してください",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _IconSelector extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIconIdx = ref.watch(remindGroupModalProvider).iconIdx;

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        child: Wrap(
          children: RemindGroupModal.icons.indexed.map(
            (elem) {
              final icon = elem.$2;
              final idx = elem.$1;
              return IconButton(
                icon: Icon(icon, size: 30),
                onPressed: () {
                  ref.read(remindGroupModalProvider.notifier).iconIdx = idx;
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    currentIconIdx == idx
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
