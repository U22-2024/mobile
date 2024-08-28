import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/domain/event_material/event_material_repository.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

Future<T?> showEventAddModal<T>(BuildContext context) {
  return showBarModalBottomSheet<T>(
    context: context,
    builder: (context) {
      return SafeArea(
        top: true,
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: EventAddModal(),
          ),
        ),
      );
    },
  );
}

class EventAddModal extends HookConsumerWidget {
  const EventAddModal({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final eventMaterial = ref.watch(eventMaterialRepositoryProvider);
    final textController = useTextEditingController();
    final pendingRequest = useState<Future<void>?>(null);
    final snapshot = useFuture(pendingRequest.value);

    return Column(
      // mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 16),
        TextFormField(
          controller: textController,
          decoration: const InputDecoration(
            labelText: 'イベントの説明',
            hintText: '例: 夏服を買いに行く、友達とお昼ご飯を食べる',
          ),
          maxLines: null,
          keyboardType: TextInputType.multiline,
        ),
        Text(eventMaterial.toString()),
        const SizedBox(height: 16),
        Align(
          alignment: Alignment.centerRight,
          child: ElevatedButton(
            onPressed: () {
              pendingRequest.value = ref
                  .read(eventMaterialRepositoryProvider.notifier)
                  .predict(textController.text);
            },
            child: snapshot.connectionState == ConnectionState.waiting
                ? const CircularProgressIndicator()
                : const Text('保存'),
          ),
        ),
      ],
    );
  }
}
