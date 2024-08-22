import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/domain/event/event_repository.dart';
import 'package:mobile/presentation/widgets/event_card.dart';
import 'package:skeletonizer/skeletonizer.dart';

class LeastEventCard extends HookConsumerWidget {
  const LeastEventCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final leastEvent = ref.watch(leastEventProvider);

    return leastEvent.when(
      data: (event) => event != null
          ? EventCard(event: event)
          : const Card(
              child: ListTile(
                title: Text(
                  '今することはなし！画面下のボタンからイベントを追加しましょう！',
                ),
              ),
            ),
      error: (err, stackTrace) => const SizedBox(),
      loading: () => const Skeletonizer.zone(
        child: Card(
          child: ListTile(
            title: Bone.text(words: 2),
            subtitle: Bone.text(),
          ),
        ),
      ),
    );
  }
}
