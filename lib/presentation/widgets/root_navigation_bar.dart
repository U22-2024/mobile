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
    return BottomAppBar(
      notchMargin: 12,
      shape: const CircularNotchedRectangle(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _NavBarItem(
            navigationShell: navigationShell,
            index: 0,
            title: 'ホーム',
            icon: const Icon(Icons.home, size: 28),
          ),
          _NavBarItem(
            navigationShell: navigationShell,
            index: 1,
            title: 'イベント',
            icon: const Icon(Icons.event, size: 28),
          ),
        ],
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  const _NavBarItem({
    required this.navigationShell,
    required this.index,
    required this.title,
    required this.icon,
  });

  final StatefulNavigationShell navigationShell;
  final int index;
  final String title;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    final isSelected = navigationShell.currentIndex == index;
    final theme = Theme.of(context);

    return Material(
      shape: const StadiumBorder(),
      color: isSelected
          ? theme.colorScheme.secondaryContainer
          : Colors.transparent,
      child: Row(
        children: [
          IconButton(
            onPressed: () => navigationShell.goBranch(index),
            icon: icon,
          ),
          if (isSelected) ...[
            const SizedBox(width: 8),
            Text(title),
            const SizedBox(width: 16),
          ]
        ],
      ),
    );
  }
}
