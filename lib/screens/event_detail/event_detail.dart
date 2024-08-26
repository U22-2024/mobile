import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:mobile/domain/event/event_model.dart';
import 'package:mobile/domain/event/event_repository.dart';

const _pointCardWidth = 200.0;
const _moveCardWidth = 100.0;

class EventDetailScreen extends ConsumerWidget {
  const EventDetailScreen({
    super.key,
    required this.eventId,
  });

  final EventModelId eventId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final events = ref.watch(leastEventProvider);
    final event = events.when(
      data: (data) => data,
      error: (err, stackTrace) => null,
      loading: () => EventModel.empty(),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(event?.title ?? "不明なイベント"),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            if (event != null) ...[
              const SizedBox(height: 20),
              _TimeTableView(event: event),
            ],
          ],
        ),
      ),
    );
  }
}

class _TimeTableView extends StatelessWidget {
  const _TimeTableView({required this.event});

  final EventModel event;

  @override
  Widget build(BuildContext context) {
    final items = event.timeTable.items;
    const emptyPointData = TimeTableItemPointData(name: "");
    List<Widget> itemWidgets = [];

    TimeTableItemModel? prev;
    for (final item in items) {
      if (prev == null && item is TimeTableItemMoveData) {
        itemWidgets.add(const _TimeTablePointCard(item: emptyPointData));
        itemWidgets.add(_TimeTableMoveCard(item: item));
      } else if (prev is TimeTableItemMoveData &&
          item is TimeTableItemMoveData) {
        itemWidgets.add(const _TimeTablePointCard(item: emptyPointData));
        itemWidgets.add(_TimeTableMoveCard(item: item));
      } else if (prev is TimeTableItemPointData &&
          item is TimeTableItemPointData) {
        itemWidgets.add(const SizedBox(height: 10));
        itemWidgets.add(_TimeTablePointCard(item: item));
      } else if (item is TimeTableItemPointData) {
        itemWidgets.add(_TimeTablePointCard(item: item));
      } else if (item is TimeTableItemMoveData) {
        itemWidgets.add(_TimeTableMoveCard(item: item));
      }
      prev = item;
    }
    if (prev is TimeTableItemMoveData) {
      itemWidgets.add(const _TimeTablePointCard(item: emptyPointData));
    }

    return SizedBox(
      width: _pointCardWidth + _moveCardWidth + 10,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: itemWidgets,
      ),
    );
  }
}

class _TimeTablePointCard extends StatelessWidget {
  const _TimeTablePointCard({required this.item});

  final TimeTableItemPointData item;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SizedBox(
      width: _pointCardWidth,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: theme.colorScheme.primaryContainer,
          boxShadow: [
            BoxShadow(
              color: theme.colorScheme.onSurface.withOpacity(0.2),
              offset: const Offset(0, 2),
              blurRadius: 2,
            ),
          ],
        ),
        alignment: Alignment.center,
        child: Text(item.name),
      ),
    );
  }
}

class _TimeTableMoveCard extends StatelessWidget {
  const _TimeTableMoveCard({required this.item});

  final TimeTableItemMoveData item;

  Widget _buildMoveTip(ThemeData theme, String text) {
    return Container(
      width: _moveCardWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: theme.colorScheme.primaryContainer.withOpacity(0.8),
      ),
      alignment: Alignment.center,
      child: Text(text),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final dateFormatter = DateFormat('HH:mm');

    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        width: 200,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: -15,
              child: _buildMoveTip(theme, dateFormatter.format(item.move.from)),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Column(
                children: [
                  const SizedBox(height: 8),
                  Text(item.move.lineName),
                  const SizedBox(height: 8),
                ],
              ),
            ),
            Positioned(
              bottom: -15,
              child: _buildMoveTip(theme, dateFormatter.format(item.move.to)),
            ),
          ],
        ),
      ),
    );
  }
}
