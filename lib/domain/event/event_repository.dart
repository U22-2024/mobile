import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'event_model.dart';

part 'event_repository.g.dart';

@riverpod
class EventRepository extends _$EventRepository {
  @override
  Future<List<EventModel>> build() async {
    return await _fetch();
  }

  Future<List<EventModel>> _fetch() async {
    await Future.delayed(const Duration(seconds: 1));

    // TODO: 仮データを返す
    return [
      EventModel(
        id: const EventModelId('1'),
        title: '講演会',
        items: const [
          EventItemModel(value: '10:00に出発、電車とバスを乗り継いで会場に向かう'),
          EventItemModel(value: '持ち物：筆記用具、飲み物'),
          EventItemModel(value: "アドバイス：会場には10分前につくようにした方が良いよ"),
        ],
        userItems: const [
          UserItemModel(value: '水筒には水を入れておく'),
          UserItemModel(value: '筆記用具は黒ボールペンを持参する'),
          UserItemModel(value: '水筒には水を入れておく'),
          UserItemModel(value: '筆記用具は黒ボールペンを持参する'),
        ],
        timeTable: TimeTableModel(
          items: [
            const TimeTableItemModel.point(
              name: '自宅',
            ),
            TimeTableItemModel.move(
              move: TimeTableMoveData.train(
                name: '電車',
                from: DateTime.now(),
                to: DateTime.now(),
                distance: 0,
                lineName: '山手線',
                transport: const TransportModel(
                  fare: 0,
                  trainName: '山手線',
                  color: 'green',
                  direction: '内回り',
                  destination: '新宿',
                ),
              ),
            ),
            TimeTableItemModel.move(
              move: TimeTableMoveData.other(
                name: '新宿駅',
                from: DateTime.now(),
                to: DateTime.now(),
                distance: 0,
                lineName: '山手線',
              ),
            ),
            const TimeTableItemModel.point(
              name: '新宿駅',
            ),
            TimeTableItemModel.move(
              move: TimeTableMoveData.other(
                name: 'バス',
                from: DateTime.now(),
                to: DateTime.now(),
                distance: 0,
                lineName: 'バス',
              ),
            ),
          ],
          transitCount: 0,
          walkDistance: 0,
          fare: 0,
        ),
      ),
      EventModel(
        id: const EventModelId('2'),
        title: '打ち合わせ',
        items: const [
          EventItemModel(value: '13:00に出発、電車で会社に向かう'),
          EventItemModel(value: '持ち物：資料、PC'),
          EventItemModel(value: "アドバイス：会社には10分前につくようにした方が良いよ"),
        ],
        userItems: const [
          UserItemModel(value: 'PCはバッテリーが十分に充電されているか確認する'),
          UserItemModel(value: '資料はメールで送っておく'),
        ],
        timeTable: TimeTableModel(
          items: [
            const TimeTableItemModel.point(
              name: '自宅',
            ),
            TimeTableItemModel.move(
              move: TimeTableMoveData.train(
                name: '電車',
                from: DateTime.now(),
                to: DateTime.now(),
                distance: 0,
                lineName: '山手線',
                transport: const TransportModel(
                  fare: 0,
                  trainName: '山手線',
                  color: 'green',
                  direction: '内回り',
                  destination: '新宿',
                ),
              ),
            ),
            TimeTableItemModel.move(
              move: TimeTableMoveData.other(
                name: '新宿駅',
                from: DateTime.now(),
                to: DateTime.now(),
                distance: 0,
                lineName: '山手線',
              ),
            ),
            const TimeTableItemModel.point(
              name: '新宿駅',
            ),
            TimeTableItemModel.move(
              move: TimeTableMoveData.other(
                name: '会社',
                from: DateTime.now(),
                to: DateTime.now(),
                distance: 0,
                lineName: 'バス',
              ),
            ),
          ],
          transitCount: 0,
          walkDistance: 0,
          fare: 0,
        ),
      ),
    ];
  }
}

@riverpod
Future<EventModel?> leastEvent(LeastEventRef ref) async {
  final events = await ref.watch(eventRepositoryProvider.future);
  return events.isEmpty
      ? null
      : events.reduce((a, b) {
          final aTimeTable = a.timeTable.items
              .whereType<TimeTableItemMoveData>()
              .reduce((a, b) => a.move.from.isBefore(b.move.from) ? a : b);
          final bTimeTable = b.timeTable.items
              .whereType<TimeTableItemMoveData>()
              .reduce((a, b) => a.move.from.isBefore(b.move.from) ? a : b);
          return aTimeTable.move.from.isBefore(bTimeTable.move.from) ? a : b;
        });
}
