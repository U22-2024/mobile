import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/domain/remind/remind_groups.dart';
import 'package:mobile/presentation/home/remind/create_group/create_group_screen.dart';
import 'package:mobile/proto/remind/v1/remind_group.pbgrpc.dart';

class RemindScreen extends HookConsumerWidget {
  RemindScreen({super.key});

  static const routeLocation = "remind";
  final _key = GlobalKey<ExpandableFabState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reminds'),
      ),
      body: Column(
        children: [
          _BoardView(),
        ],
      ),
      floatingActionButtonLocation: ExpandableFab.location,
      floatingActionButton: ExpandableFab(
        key: _key,
        type: ExpandableFabType.up,
        distance: 70,
        childrenAnimation: ExpandableFabAnimation.none,
        openButtonBuilder: DefaultFloatingActionButtonBuilder(
          child: const Icon(Icons.add),
          fabSize: ExpandableFabSize.regular,
        ),
        closeButtonBuilder: DefaultFloatingActionButtonBuilder(
          child: const Icon(Icons.close),
          fabSize: ExpandableFabSize.small,
        ),
        overlayStyle: const ExpandableFabOverlayStyle(
          blur: 5,
        ),
        children: [
          const Row(
            children: [
              Text("リマインド"),
              SizedBox(width: 20),
              FloatingActionButton.small(
                onPressed: null,
                heroTag: null,
                child: Icon(Icons.alarm_add),
              ),
            ],
          ),
          _NewGroupActionButton(expandableKey: _key),
        ],
      ),
    );
  }
}

class _BoardView extends HookConsumerWidget {
  Iterable<Widget> _buildBoards(
      BuildContext context, List<RemindGroup> groups) {
    return groups.map((group) {
      return _RemindGroupCard(group: group);
    });
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final groups = ref.watch(remindGroupsProvider);

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: _buildBoards(context, groups).toList(),
      ),
    );
  }
}

class _RemindGroupCard extends StatelessWidget {
  final RemindGroup group;

  const _RemindGroupCard({required this.group});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(8),
        width: 100,
        height: 100,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Icon(Icons.tips_and_updates),
            Text(group.title),
          ],
        ),
      ),
    );
  }
}

class _NewGroupActionButton extends ConsumerWidget {
  final GlobalKey<ExpandableFabState> expandableKey;

  const _NewGroupActionButton({required this.expandableKey});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(createGroupModalProvider.notifier);

    return Row(
      children: [
        const Text("リマインド"),
        const SizedBox(width: 20),
        FloatingActionButton.small(
          heroTag: null,
          onPressed: () {
            expandableKey.currentState?.toggle();
            notifier.show(context);
          },
          child: const Icon(Icons.create_new_folder_rounded),
        ),
      ],
    );
  }
}
