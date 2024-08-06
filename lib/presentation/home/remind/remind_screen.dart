import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/presentation/components/expandable_fab/expandable_fab.dart';

class RemindScreen extends HookConsumerWidget {
  const RemindScreen({super.key});

  static const routeLocation = "remind";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reminds'),
      ),
      body: const Center(
        child: Text('Remind Screen'),
      ),
      floatingActionButton: ExpandableFab(
        children: [
          ActionButton(
            icon: const Icon(Icons.email),
            onPressed: () {},
          ),
          ActionButton(
            icon: const Icon(Icons.message),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
