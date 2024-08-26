import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_model.freezed.dart';

//#region EventModel
@freezed
class EventModelId with _$EventModelId {
  const factory EventModelId(String value) = _EventModelId;
}

@freezed
class EventModel with _$EventModel {
  const factory EventModel({
    required EventModelId id,
    required String title,
    String? description,
    required List<EventItemModel> items,
    required TimeTableModel timeTable,
    required List<UserItemModel> userItems,
  }) = _EventModel;

  static EventModel empty() => const EventModel(
        id: EventModelId(""),
        title: "",
        items: [],
        timeTable: TimeTableModel(
          items: [],
          transitCount: 0,
          walkDistance: 0,
          fare: 0,
        ),
        userItems: [],
      );
}

@freezed
class EventItemModel with _$EventItemModel {
  const factory EventItemModel({
    required String value,
  }) = _EventItemModel;
}

@freezed
class UserItemModel with _$UserItemModel {
  const factory UserItemModel({
    required String value,
  }) = _UserItemModel;
}
//#endregion

//#region TimeTableModel
@freezed
class TimeTableModel with _$TimeTableModel {
  const factory TimeTableModel({
    required List<TimeTableItemModel> items,
    required int transitCount,
    required int walkDistance,
    required int fare,
  }) = _TimeTableModel;
}

@freezed
sealed class TimeTableItemModel with _$TimeTableItemModel {
  const factory TimeTableItemModel.point({
    required String name,
  }) = TimeTableItemPointData;

  const factory TimeTableItemModel.move({
    required TimeTableMoveData move,
  }) = TimeTableItemMoveData;
}

@freezed
sealed class TimeTableMoveData with _$TimeTableMoveData {
  const factory TimeTableMoveData.other({
    required String name,
    required DateTime from,
    required DateTime to,
    required int distance,
    required String lineName,
  }) = OtherMoveData;

  const factory TimeTableMoveData.train({
    required String name,
    required DateTime from,
    required DateTime to,
    required int distance,
    required String lineName,
    required TransportModel transport,
  }) = TrainMoveData;
}

@freezed
class TransportModel with _$TransportModel {
  const factory TransportModel({
    required int fare,
    required String trainName,
    required String color,
    required String direction,
    required String destination,
  }) = _TransportModel;
}
//#endregion
