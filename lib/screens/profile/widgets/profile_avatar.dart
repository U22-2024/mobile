import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfileAvatar extends ConsumerWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    return IconButton(
      onPressed: () {},
      icon: const Icon(Icons.person, size: 72),
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(
          theme.colorScheme.primaryContainer,
        ),
      ),
    );
  }
}
