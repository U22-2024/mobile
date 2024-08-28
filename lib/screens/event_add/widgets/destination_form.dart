import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/domain/event_material/event_material_repository.dart';

class DestinationForm extends HookConsumerWidget {
  const DestinationForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final predictSource = ref.watch(predictSourceProvider);
    log(predictSource.toString(), name: 'DestinationForm');
    if (predictSource.destination?.isNotEmpty ?? false) return const SizedBox();

    final textController = useTextEditingController();

    return Column(
      children: [
        TextFormField(
          controller: textController,
          decoration: const InputDecoration(
            labelText: 'どこに行く？',
            hintText: '例: 〇〇駅、〇〇公園',
          ),
          validator: (value) {
            if (value?.isEmpty ?? true) {
              return '行き先は分かりやすく入力しなさい！';
            }
            return null;
          },
          onSaved: (value) {
            if (value == null) return;
            ref.read(predictSourceProvider.notifier).destination = value;
          },
          onEditingComplete: () {
            // if (textController.text.isNotEmpty) {
            //   ref.read(predictSourceProvider.notifier).destination = textController.text;
            // }
          },
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
