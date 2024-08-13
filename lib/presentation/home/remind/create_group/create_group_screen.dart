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
class CreateGroupModal extends _$CreateGroupModal {
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

  Future<void> create() async {
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

  Future show(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return _Screen();
      },
    );
  }
}

/// リマインドグループ作成スクリーン
class _Screen extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mediaQuery = MediaQuery.of(context);
    final height = max(300, mediaQuery.size.height * 0.3);

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
            _ButtonGroup(),
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
    final iconIdx = ref.watch(createGroupModalProvider).iconIdx;
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
                    CreateGroupModal.icons[iconIdx],
                    size: 30,
                    color: theme.colorScheme.onSecondary,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                controller: ref.read(createGroupModalProvider).title,
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
    final currentIconIdx = ref.watch(createGroupModalProvider).iconIdx;

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        child: Wrap(
          children: CreateGroupModal.icons.indexed.map(
            (elem) {
              final icon = elem.$2;
              final idx = elem.$1;
              return IconButton(
                icon: Icon(icon, size: 30),
                onPressed: () {
                  ref.read(createGroupModalProvider.notifier).iconIdx = idx;
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
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 20,
      children: [
        ElevatedButton(
          onPressed: () {
            ref.read(createGroupModalProvider.notifier).reset();
            Navigator.of(context).pop();
          },
          child: const Text("キャンセル"),
        ),
        ElevatedButton(
          onPressed: () {
            ref.read(createGroupModalProvider.notifier).create();
            Navigator.of(context).pop();
          },
          child: const Text("作成"),
        ),
      ],
    );
  }
}
