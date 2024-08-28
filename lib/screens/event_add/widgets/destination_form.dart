import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DestinationForm extends HookConsumerWidget {
  const DestinationForm({
    super.key,
    required this.textController,
  });

  final TextEditingController textController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextFormField(
      controller: textController,
      decoration: const InputDecoration(
        labelText: 'どこに行く？',
        hintText: '例: 〇〇駅、〇〇公園',
      ),
    );
  }
}
