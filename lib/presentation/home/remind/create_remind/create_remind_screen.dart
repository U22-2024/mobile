import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/domain/remind/remind_groups.dart';
import 'package:mobile/domain/remind/reminds.dart';
import 'package:mobile/presentation/home/remind/create_group/create_group_screen.dart';
import 'package:mobile/presentation/home/remind/create_remind/select_group_modal.dart';
import 'package:mobile/proto/remind/v1/remind_group.pbgrpc.dart';

final _formKey = GlobalKey<FormState>();

class CreateRemindScreen extends HookConsumerWidget {
  const CreateRemindScreen({super.key});

  static const routeLocation = "create-remind";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final titleController = useTextEditingController();
    final memoController = useTextEditingController();
    final firstGroup =
        ref.watch(remindGroupsProvider.select((groups) => groups.first));
    final selectedGroup = useState(firstGroup);

    onCreate() {
      if (_formKey.currentState?.validate() ?? false) {
        ref.read(remindsProvider.notifier).add(
              titleController.text,
              memoController.text,
              selectedGroup.value.id,
            );
        context.pop();
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('新しいリマインド'),
      ),
      body: Column(
        children: [
          Form(
            key: _formKey,
            child: _TitleInputCard(
              titleController: titleController,
              memoController: memoController,
            ),
          ),
          const SizedBox(height: 16),
          _GroupInputCard(selectedGroup: selectedGroup),
          const SizedBox(height: 16),
          _ButtonGroup(onCreate: onCreate),
        ],
      ),
    );
  }
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
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            TextFormField(
              controller: titleController,
              decoration: const InputDecoration(
                labelText: 'タイトル',
              ),
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

class _GroupInputCard extends ConsumerWidget {
  final ValueNotifier<RemindGroup> selectedGroup;

  const _GroupInputCard({required this.selectedGroup});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: ElevatedButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) =>
                SelectGroupModal(selectedGroup: selectedGroup),
          );
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 18),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Row(
          children: [
            Icon(RemindGroupModal.icons.firstWhere(
              (icon) => icon.codePoint == selectedGroup.value.icon.codePoint,
              orElse: () => RemindGroupModal.icons.first,
            )),
            const SizedBox(width: 8),
            Text(selectedGroup.value.title),
          ],
        ),
      ),
    );
  }
}

class _ButtonGroup extends HookConsumerWidget {
  final Function() onCreate;

  const _ButtonGroup({required this.onCreate});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 20,
      children: [
        ElevatedButton(
          onPressed: () {
            context.pop();
          },
          child: const Text('キャンセル'),
        ),
        ElevatedButton(
          onPressed: onCreate,
          child: const Text('リマインドを作成'),
        ),
      ],
    );
  }
}
