import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:mobile/domain/event_material/event_material_repository.dart';
import 'package:mobile/domain/grpc/converter.dart';

class StartAndEndTimeForm extends HookConsumerWidget {
  StartAndEndTimeForm({super.key});

  final _formatter = DateFormat('yyyy/MM/dd HH:mm');

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final eventMaterial = ref.watch(eventMaterialRepositoryProvider);
    final startAt = eventMaterial.predictSource.startAt?.toDateTime();
    final endAt = eventMaterial.predictSource.endAt?.toDateTime();
    if (startAt != null && endAt != null) {
      return const SizedBox();
    }

    final selectedStart = useState<DateTime?>(startAt);
    final selectedEnd = useState<DateTime?>(endAt);

    return Column(
      children: [
        const SizedBox(height: 16),
        const Text('開始時間と終了時間を入力してください'),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: '開始時間',
                  hintText: '開始時間を選択',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                ),
                onSaved: (value) {
                  if (selectedStart.value == null ||
                      value == null ||
                      value.isEmpty) {
                    return;
                  }
                  ref
                      .read(eventMaterialRepositoryProvider.notifier)
                      .setStartAt(selectedStart.value!);
                },
                readOnly: true,
                controller: TextEditingController(
                  text: selectedStart.value == null
                      ? ''
                      : _formatter.format(selectedStart.value!),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '開始時間を選択してください';
                  }
                  if (selectedEnd.value != null &&
                      selectedStart.value!.isAfter(selectedEnd.value!)) {
                    return '開始時間は終了時間より前にしてください';
                  }
                  return null;
                },
                onTap: () async {
                  final selectedDate = await showDatePicker(
                    context: context,
                    firstDate: startAt ?? DateTime.now(),
                    lastDate:
                        endAt ?? DateTime.now().add(const Duration(days: 365)),
                  );
                  if (selectedDate == null || !context.mounted) {
                    return;
                  }
                  final selectedTime = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.fromDateTime(DateTime.now()),
                  );
                  if (selectedTime == null) {
                    return;
                  }
                  selectedStart.value = DateTime(
                    selectedDate.year,
                    selectedDate.month,
                    selectedDate.day,
                    selectedTime.hour,
                    selectedTime.minute,
                  );
                },
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: '終了時間',
                  hintText: '終了時間を選択',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                ),
                onSaved: (value) {
                  if (selectedEnd.value == null ||
                      value == null ||
                      value.isEmpty) {
                    return;
                  }
                  ref
                      .read(eventMaterialRepositoryProvider.notifier)
                      .setEndAt(selectedEnd.value!);
                },
                readOnly: true,
                controller: TextEditingController(
                  text: selectedEnd.value == null
                      ? ''
                      : _formatter.format(selectedEnd.value!),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return '終了時間を選択してください';
                  }
                  if (selectedStart.value != null &&
                      selectedEnd.value!.isBefore(selectedStart.value!)) {
                    return '終了時間は開始時間より後にしてください';
                  }
                  return null;
                },
                onTap: () async {
                  final selectedDate = await showDatePicker(
                    context: context,
                    firstDate: startAt ?? DateTime.now(),
                    lastDate:
                        endAt ?? DateTime.now().add(const Duration(days: 365)),
                  );
                  if (selectedDate == null || !context.mounted) {
                    return;
                  }
                  final selectedTime = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.fromDateTime(DateTime.now()),
                  );
                  if (selectedTime == null) {
                    return;
                  }
                  selectedEnd.value = DateTime(
                    selectedDate.year,
                    selectedDate.month,
                    selectedDate.day,
                    selectedTime.hour,
                    selectedTime.minute,
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
