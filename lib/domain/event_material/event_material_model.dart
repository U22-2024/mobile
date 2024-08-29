import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/proto/event/v1/core.pb.dart' as $core;
import 'package:mobile/proto/event/v1/event_material.pb.dart';

import 'event_material_repository.dart';

part 'event_material_model.freezed.dart';

@freezed
class EventMaterialModel with _$EventMaterialModel {
  const EventMaterialModel._();
  const factory EventMaterialModel({
    bool? isOut,
    String? remind,
    $core.Pos? fromPos,
    String? destination,
    $core.Pos? destPos,
    $core.MoveType? moveType,
    $core.DateTime? startAt,
    $core.DateTime? endAt,
  }) = _EventMaterialModel;

  factory EventMaterialModel.fromSource({
    required PredictSourceState source,
    required ClientOnlyState clientOnly,
    required AiOnlyPredictState aiOnly,
  }) =>
      EventMaterialModel(
        isOut: aiOnly.isOut,
        remind: aiOnly.remind,
        fromPos: clientOnly.fromPos,
        destination: source.destination,
        destPos: clientOnly.destPos,
        moveType: source.moveType,
        startAt: source.startAt,
        endAt: source.endAt,
      );

  factory EventMaterialModel.fromGrpc(EventMaterial eventMaterial) =>
      EventMaterialModel(
        isOut: eventMaterial.isOut,
        remind: eventMaterial.remind,
        fromPos: eventMaterial.fromPos,
        destination: eventMaterial.destination,
        destPos: eventMaterial.destinationPos,
        moveType: eventMaterial.moveType,
        startAt: eventMaterial.startTime,
        endAt: eventMaterial.endTime,
      );

  bool get isFilled =>
      isOut != null &&
      (remind?.isNotEmpty ?? false) &&
      fromPos != null &&
      (destination?.isNotEmpty ?? false) &&
      destPos != null &&
      moveType != null &&
      startAt != null &&
      endAt != null;
  EventMaterial get grpcEventMaterial => EventMaterial(
        isOut: isOut,
        remind: remind,
        fromPos: fromPos,
        destination: destination,
        destinationPos: destPos,
        moveType: moveType,
        startTime: startAt,
        endTime: endAt,
      );
}
