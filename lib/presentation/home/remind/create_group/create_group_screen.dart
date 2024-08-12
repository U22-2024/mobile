import 'dart:math';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_group_screen.freezed.dart';
part 'create_group_screen.g.dart';

@riverpod
class CreateGroupModal extends _$CreateGroupModal {
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
    final height = max(400, mediaQuery.size.height / 2);

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
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: TextField(
          controller: ref.read(createGroupModalProvider).title,
          decoration: const InputDecoration(
            labelText: "グループ名",
            hintText: "グループ名を入力してください",
          ),
        ),
      ),
    );
  }
}

class _IconSelector extends HookConsumerWidget {
  final _icons = [
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
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIconIdx = ref.watch(createGroupModalProvider).iconIdx;

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        child: Wrap(
          children: _icons.indexed.map(
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
