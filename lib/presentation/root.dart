import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/presentation/widgets/branch_container.dart';
import 'package:mobile/presentation/widgets/root_navigation_bar.dart';
import 'package:mobile/screens/event_add/event_add.dart';

class RootScreen extends ConsumerWidget {
  const RootScreen({
    super.key,
    required this.navigationShell,
    required this.children,
  });

  final StatefulNavigationShell navigationShell;
  final List<Widget> children;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: BranchContainer(
        currentIndex: navigationShell.currentIndex,
        children: children,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showEventAddModal(context);
        },
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: RootNavigationBar(navigationShell: navigationShell),
    );
  }
}
