import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ExpandableFab extends HookWidget {
  const ExpandableFab({
    super.key,
    required this.children,
  });

  final List<ActionButton> children;

  Iterable<Widget> _buildChildren(
    BuildContext context,
    AnimationController controller,
    ValueNotifier<bool> isOpen,
  ) {
    return children.asMap().entries.map((entry) {
      final index = entry.key;
      final child = entry.value;

      final offset = 80.0 * (index + 1) - 10;

      final configuredChild = child.copyWith(onPressed: () {
        child.onPressed();
        isOpen.value = false;
      });
      return _ExpandingActionButton(controller, offset, configuredChild);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final isOpen = useState(false);
    final controller = useAnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: useSingleTickerProvider(),
    );

    return SizedBox(
      height: double.infinity,
      child: Stack(
        alignment: Alignment.bottomCenter,
        clipBehavior: Clip.none,
        children: [
          ..._buildChildren(context, controller, isOpen),
          FloatingActionButton(
            onPressed: () {
              if (isOpen.value) {
                controller.reverse();
              } else {
                controller.forward();
              }
              isOpen.value = !isOpen.value;
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}

abstract class IOnPressedInjectable<T> {
  T injectOnPressed(VoidCallback onPressed);
}

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.label,
  });

  final Widget icon;
  final VoidCallback onPressed;
  final Widget? label;

  ActionButton copyWith({
    Widget? icon,
    VoidCallback? onPressed,
    Widget? label,
  }) {
    return ActionButton(
      icon: icon ?? this.icon,
      onPressed: onPressed ?? this.onPressed,
      label: label ?? this.label,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          shape: const CircleBorder(),
          clipBehavior: Clip.antiAlias,
          color: Theme.of(context).colorScheme.secondary,
          elevation: 4,
          child: IconButton(
            padding: const EdgeInsets.all(10),
            icon: icon,
            color: Theme.of(context).colorScheme.onSecondary,
            onPressed: onPressed,
          ),
        ),
        if (label != null) label!,
      ],
    );
  }
}

class _ExpandingActionButton extends StatelessWidget {
  final Animation<double> progress;
  final double offset;
  final ActionButton child;

  const _ExpandingActionButton(this.progress, this.offset, this.child);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: progress,
      builder: (context, child) {
        final bottomOffset = Offset(0, offset * progress.value);
        return Positioned(bottom: bottomOffset.dy, child: child!);
      },
      child: FadeTransition(opacity: progress, child: child),
    );
  }
}
