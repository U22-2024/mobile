import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/domain/grpc/converter.dart';
import 'package:mobile/proto/event/v1/core.pb.dart' as $core;
import 'package:mobile/proto/event/v1/event.pb.dart';

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

  factory EventModel.fromGrpc({required Event event}) {
    return EventModel(
      id: EventModelId(event.id.value),
      title: event.title,
      description: event.description,
      items: event.eventItem.map((e) => EventItemModel(value: e)).toList(),
      timeTable: TimeTableModel.fromGrpc(timeTable: event.timeTable),
      userItems:
          event.userItems.item.map((e) => UserItemModel(value: e)).toList(),
    );
  }

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
  const TimeTableModel._();
  const factory TimeTableModel({
    required List<TimeTableItemModel> items,
    required int transitCount,
    required int walkDistance,
    required int fare,
  }) = _TimeTableModel;

  factory TimeTableModel.fromGrpc({required TimeTable timeTable}) {
    return TimeTableModel(
      items: timeTable.item.map((e) => TimeTableItemModel.fromGrpc(e)).toList(),
      transitCount: timeTable.transitCount,
      walkDistance: timeTable.walkDistance,
      fare: timeTable.fare,
    );
  }

  TimeTable get grpcModel => TimeTable(
        item: items.map((e) => e.grpcModel).toList(),
        transitCount: transitCount,
        walkDistance: walkDistance,
        fare: fare,
      );
}

@freezed
sealed class TimeTableItemModel with _$TimeTableItemModel {
  const TimeTableItemModel._();
  const factory TimeTableItemModel.point({
    required String name,
  }) = TimeTableItemPointData;

  const factory TimeTableItemModel.move({
    required TimeTableMoveData move,
  }) = TimeTableItemMoveData;

  factory TimeTableItemModel.fromGrpc(TimeTableItem item) {
    if (item.type == $core.TimeTableType.TIME_TABLE_TYPE_POINT) {
      return TimeTableItemModel.point(name: item.name);
    } else if (item.type == $core.TimeTableType.TIME_TABLE_TYPE_MOVE) {
      return TimeTableItemModel.move(move: TimeTableMoveData.fromGrpc(item));
    } else {
      throw Exception("Invalid TimeTableItem");
    }
  }

  TimeTableItem get grpcModel {
    if (this is TimeTableItemPointData) {
      return TimeTableItem(
        type: $core.TimeTableType.TIME_TABLE_TYPE_POINT,
        name: (this as TimeTableItemPointData).name,
      );
    } else {
      return (this as TimeTableItemMoveData).grpcModel;
    }
  }
}

@freezed
sealed class TimeTableMoveData with _$TimeTableMoveData {
  const TimeTableMoveData._();
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

  factory TimeTableMoveData.fromGrpc(TimeTableItem item) {
    if (item.move == "train") {
      return TimeTableMoveData.train(
        name: item.name,
        from: item.fromTime.toDateTime()!,
        to: item.endTime.toDateTime()!,
        distance: item.distance,
        lineName: item.lineName,
        transport: TransportModel.fromGrpc(item.transport),
      );
    } else {
      return TimeTableMoveData.other(
        name: item.name,
        from: item.fromTime.toDateTime()!,
        to: item.endTime.toDateTime()!,
        distance: item.distance,
        lineName: item.lineName,
      );
    }
  }

  TimeTableItem get grpcModel {
    if (this is TrainMoveData) {
      return TimeTableItem(
        type: $core.TimeTableType.TIME_TABLE_TYPE_MOVE,
        name: name,
        fromTime: from.toGrpcDateTime(),
        endTime: to.toGrpcDateTime(),
        distance: distance,
        lineName: lineName,
        move: "train",
        transport: (this as TrainMoveData).transport.grpcModel,
      );
    } else {
      return TimeTableItem(
        type: $core.TimeTableType.TIME_TABLE_TYPE_MOVE,
        name: name,
        fromTime: from.toGrpcDateTime(),
        endTime: to.toGrpcDateTime(),
        distance: distance,
        lineName: lineName,
        move: "other",
      );
    }
  }
}

@freezed
class TransportModel with _$TransportModel {
  const TransportModel._();
  const factory TransportModel({
    required int fare,
    required String trainName,
    required String color,
    required String direction,
    required String destination,
  }) = _TransportModel;

  factory TransportModel.fromGrpc(Transport transport) {
    return TransportModel(
      fare: transport.fare,
      trainName: transport.trainName,
      color: transport.color,
      direction: transport.direction,
      destination: transport.destination,
    );
  }

  Transport get grpcModel => Transport(
        fare: fare,
        trainName: trainName,
        color: color,
        direction: direction,
        destination: destination,
      );
}
//#endregion
