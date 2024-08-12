import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_group_screen.g.dart';

/// リマインドグループ作成スクリーン
class CreateGroupScreen extends HookConsumerWidget {
  const CreateGroupScreen({super.key});

  static const routeLocation = "create_group";

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

class _State {
  String title;
  int iconIdx;

  _State({
    required this.title,
    required this.iconIdx,
  });
}

@Riverpod(keepAlive: true)
class _Controller extends _$Controller {
  @override
  _State build() {
    return _State(title: "", iconIdx: 0);
  }
}

class _GroupTitleField extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final title = useTextEditingController(
      text: ref.read(_controllerProvider).title,
    );

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: TextField(
          controller: title,
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
    final currentIconIdx = useState(ref.read(_controllerProvider).iconIdx);

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
                  currentIconIdx.value = idx;
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    currentIconIdx.value == idx
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
