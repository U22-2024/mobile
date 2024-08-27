import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
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

class EventAddModal extends ConsumerWidget {
  const EventAddModal({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      // mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 16),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'イベントの説明',
            hintText: '例: 夏服を買いに行く、友達とお昼ご飯を食べる',
          ),
          maxLines: null,
          keyboardType: TextInputType.multiline,
        ),
      ],
    );
  }
}
