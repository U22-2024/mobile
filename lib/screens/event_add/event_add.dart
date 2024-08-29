import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/domain/event_material/event_material_repository.dart';
import 'package:mobile/screens/event_add/widgets/destination_form.dart';
import 'package:mobile/screens/event_add/widgets/move_type_form.dart';
import 'package:mobile/screens/event_add/widgets/time_form.dart';
import 'package:mobile/screens/event_add/widgets/time_table_modal.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

Future<T?> showEventAddModal<T>(BuildContext context) {
  return showBarModalBottomSheet<T>(
    context: context,
    builder: (context) {
      return SafeArea(
        top: true,
        child: ProviderScope(
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
        ),
      );
    },
  );
}

final _formKey = GlobalKey<FormState>();

class EventAddModal extends HookConsumerWidget {
  const EventAddModal({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final eventMaterial = ref.watch(eventMaterialRepositoryProvider);
    final textController = useTextEditingController();
    final isFirstPredicted = useState(false);
    final pendingRequest = useState<Future<void>?>(null);
    final snapshot = useFuture(pendingRequest.value);

    return Form(
      key: _formKey,
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 16),
          TextFormField(
            controller: textController,
            decoration: const InputDecoration(
              labelText: 'イベントの説明',
              hintText: '例: 夏服を買いに行く、友達とお昼ご飯を食べる',
            ),
            enabled: snapshot.connectionState != ConnectionState.waiting,
            maxLines: null,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: TextInputType.multiline,
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return '分かりやすくイベントの説明を入力しなさい！';
              }
              return null;
            },
          ),
          Text(eventMaterial.toString()),
          if (isFirstPredicted.value) ...[
            const SizedBox(height: 16),
            const DestinationForm(),
            const SizedBox(height: 16),
            const MoveTypeForm(),
            const SizedBox(height: 16),
            StartAndEndTimeForm(),
          ],
          const SizedBox(height: 16),
          Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton(
              onPressed: () async {
                if (!(_formKey.currentState?.validate() ?? false)) return;
                _formKey.currentState!.save();
                log(eventMaterial.toString(), name: 'EventAddModal');
                final future = ref
                    .read(eventMaterialRepositoryProvider.notifier)
                    .predict(textController.text);
                pendingRequest.value = future;
                // 初回予測を行ったかのフラグを管理
                final isFilled = await future;
                isFirstPredicted.value = true;

                if (isFilled) {
                  // タイムテーブルの選択モーダルを表示
                  var future = ref.read(predictTimeTableProvider.future);
                  pendingRequest.value = future;
                  final timeTables = await future;
                  if (!context.mounted) return;
                  final selectedTimeTable = await showTimeTableModal(
                    context,
                    timeTables,
                  );
                  if (selectedTimeTable == null) return;
                  // イベントアイテムの予測
                  final eventItemFuture = ref.read(
                    predictEventItemsProvider.call(textController.text).future,
                  );
                  pendingRequest.value = eventItemFuture;
                  final eventItems = await eventItemFuture;
                  if (!context.mounted) return;
                }
              },
              child: snapshot.connectionState == ConnectionState.waiting
                  ? const CircularProgressIndicator()
                  : const Text('保存'),
            ),
          ),
        ],
      ),
    );
  }
}
