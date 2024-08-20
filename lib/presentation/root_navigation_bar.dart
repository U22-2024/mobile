import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RootNavigationBar extends ConsumerWidget {
  const RootNavigationBar({
    super.key,
    required this.navigationShell,
  });

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (selectedIndex, indicatorColor) = navigationShell.currentIndex <= 2
        ? (navigationShell.currentIndex, null)
        : (0, Colors.transparent);

    return NavigationBar(
      indicatorColor: indicatorColor,
      selectedIndex: selectedIndex,
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.home),
          label: "ホーム",
        ),
        NavigationDestination(
          icon: Icon(Icons.shopping_cart),
          label: "買い物",
        ),
      ],
      onDestinationSelected: (index) => navigationShell.goBranch(
        index,
        initialLocation: index == navigationShell.currentIndex,
      ),
    );
  }
}
