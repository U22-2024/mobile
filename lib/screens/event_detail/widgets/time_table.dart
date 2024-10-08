import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mobile/domain/event/event_model.dart';

const _pointCardWidth = 200.0;
const _moveCardWidth = 100.0;

class TimeTableView extends StatelessWidget {
  const TimeTableView({super.key, required this.timeTable});

  final TimeTableModel timeTable;

  @override
  Widget build(BuildContext context) {
    final items = timeTable.items;
    if (items.isEmpty) {
      return const SizedBox();
    }
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
        padding: const EdgeInsets.symmetric(vertical: 4),
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
              top: -12,
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
              bottom: -12,
              child: _buildMoveTip(theme, dateFormatter.format(item.move.to)),
            ),
          ],
        ),
      ),
    );
  }
}
