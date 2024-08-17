import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/domain/remind/remind_groups.dart';
import 'package:mobile/domain/remind/reminds.dart';
import 'package:mobile/presentation/home/remind/group_modal/remind_group_modal.dart';
import 'package:mobile/presentation/router/router.dart';
import 'package:mobile/proto/remind/v1/remind_group.pbgrpc.dart' hide IconData;

class RemindScreen extends HookConsumerWidget {
  RemindScreen({super.key});

  static const routeLocation = "remind";
  final _key = GlobalKey<ExpandableFabState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final groups = ref.watch(remindGroupsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('リマインド'),
      ),
      body: Column(
        children: [
          _BoardView(),
          const SizedBox(height: 24),
          _RemindListView(),
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
          if (groups.isNotEmpty) _NewRemindActionButton(expandableKey: _key),
          _NewGroupActionButton(expandableKey: _key),
        ],
      ),
    );
  }
}

class _BoardView extends HookConsumerWidget {
  Widget _buildBoard(
    BuildContext context,
    List<RemindGroup> groups,
    int index,
  ) {
    if (index == 0) {
      return _RemindGroupAllCard();
    }

    return _RemindGroupCard(group: groups[index - 1]);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final groups = ref.watch(remindGroupsProvider);

    return SizedBox(
      height: 100,
      width: double.infinity,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: groups.length + 1,
        itemBuilder: (context, index) {
          return _buildBoard(context, groups, index);
        },
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
            Icon(
              icons.firstWhere(
                (icon) => icon.codePoint == group.icon.codePoint,
                orElse: () => icons.first,
              ),
            ),
            const SizedBox(height: 8),
            Text(group.title),
          ],
        ),
      ),
    );
  }
}

class _RemindGroupAllCard extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {
          const ManageRemindGroupRoute().go(context);
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          width: 100,
          height: 100,
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.manage_search_rounded),
              SizedBox(height: 8),
              Text("グループを管理"),
            ],
          ),
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
    return Row(
      children: [
        const Text("グループ"),
        const SizedBox(width: 20),
        FloatingActionButton.small(
          heroTag: null,
          onPressed: () {
            expandableKey.currentState?.toggle();
            showCreateModal(context);
          },
          child: const Icon(Icons.create_new_folder_rounded),
        ),
      ],
    );
  }
}

class _NewRemindActionButton extends ConsumerWidget {
  final GlobalKey<ExpandableFabState> expandableKey;

  const _NewRemindActionButton({required this.expandableKey});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        const Text("リマインド"),
        const SizedBox(width: 20),
        FloatingActionButton.small(
          heroTag: null,
          onPressed: () {
            expandableKey.currentState?.toggle();
            const CreateRemindRoute().go(context);
          },
          child: const Icon(Icons.alarm_add),
        ),
      ],
    );
  }
}

class _RemindListView extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reminds = ref.watch(remindsProvider);

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: ListView.separated(
        shrinkWrap: true,
        separatorBuilder: (context, index) => const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Divider(),
        ),
        itemCount: reminds.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.radio_button_unchecked),
            title: Text(reminds[index].title),
          );
        },
      ),
    );
  }
}
