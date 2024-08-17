import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_remind_screen.freezed.dart';
part 'create_remind_screen.g.dart';

class CreateRemindScreen extends HookConsumerWidget {
  const CreateRemindScreen({super.key});

  static const routeLocation = "create-remind";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final titleController = useTextEditingController();
    final memoController = useTextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('新しいリマインド'),
      ),
      body: Column(
        children: [
          _TitleInputCard(
            titleController: titleController,
            memoController: memoController,
          ),
          const SizedBox(height: 16),
          _GroupInputCard(),
        ],
      ),
    );
  }
}

@riverpod
class _Controller extends _$Controller {
  @override
  _State build() {
    return _State(
      title: "",
      memo: "",
      groupId: '',
    );
  }

  set title(String title) {
    state = state.copyWith(title: title);
  }

  set memo(String memo) {
    state = state.copyWith(memo: memo);
  }

  set groupId(String groupId) {
    state = state.copyWith(groupId: groupId);
  }
}

@freezed
class _State with _$State {
  factory _State({
    required String title,
    required String memo,
    required String groupId,
  }) = __State;
}

class _TitleInputCard extends ConsumerWidget {
  final TextEditingController titleController, memoController;

  const _TitleInputCard({
    required this.titleController,
    required this.memoController,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextFormField(
              controller: titleController,
              decoration: const InputDecoration(
                labelText: 'タイトル',
              ),
              onSaved: (value) {
                ref.read(_controllerProvider.notifier).title = value ?? '';
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return 'タイトルを入力してください';
                }
                return null;
              },
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 260),
              child: SingleChildScrollView(
                child: TextFormField(
                  controller: memoController,
                  decoration: const InputDecoration(
                    hintText: 'メモ',
                  ),
                  onSaved: (value) {
                    ref.read(_controllerProvider.notifier).memo = value ?? '';
                  },
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _GroupInputCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Card(
      margin: EdgeInsets.all(16),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text('グループ'),
            SizedBox(height: 8),
            Text('未実装'),
          ],
        ),
      ),
    );
  }
}
