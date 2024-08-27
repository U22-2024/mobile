import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/domain/greet/greet_repository.dart';
import 'package:skeletonizer/skeletonizer.dart';

class AdviceCard extends ConsumerWidget {
  const AdviceCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final greet = ref.watch(getMothersGreetProvider);

    return SizedBox(
      width: double.infinity,
      child: Skeletonizer(
        enabled: greet.isLoading,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.tips_and_updates_rounded,
                      color: theme.colorScheme.onPrimaryContainer,
                    ),
                    const SizedBox(width: 16),
                    Text(
                      '今日の一言アドバイス',
                      style: theme.textTheme.labelLarge,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Text(greet.when(
                  data: (data) => data,
                  error: (err, stackTrace) => BoneMock.words(3),
                  loading: () => BoneMock.words(3),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
