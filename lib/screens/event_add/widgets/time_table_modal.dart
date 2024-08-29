import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/domain/event/event_model.dart';
import 'package:mobile/proto/event/v1/event.pb.dart';
import 'package:mobile/screens/event_detail/widgets/time_table.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

Future<TimeTable?> showTimeTableModal(
    BuildContext context, List<TimeTable> timeTables) async {
  List<TimeTable?> selectedTimeTable = [null];

  await showBarModalBottomSheet(
    context: context,
    builder: (context) {
      return SafeArea(
        top: true,
        child: ProviderScope(
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: TimeTableModal(
              timeTables: timeTables,
              selectedTimeTable: selectedTimeTable,
            ),
          ),
        ),
      );
    },
  );

  return selectedTimeTable.firstOrNull;
}

class TimeTableModal extends HookConsumerWidget {
  const TimeTableModal({
    super.key,
    required this.timeTables,
    required this.selectedTimeTable,
  });

  final List<TimeTable> timeTables;
  final List<TimeTable?> selectedTimeTable;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (timeTables.isEmpty) {
      return const Center(
        child: Text('タイムテーブルを探せませんでした'),
      );
    }
    return CarouselSlider(
      options: CarouselOptions(
        height: 600,
      ),
      items: timeTables.map((timeTable) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: TimeTableView(
                          timeTable:
                              TimeTableModel.fromGrpc(timeTable: timeTable),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        selectedTimeTable[0] = timeTable;
                        Navigator.of(context).pop();
                      },
                      child: const Text('このタイムテーブルを選択'),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
