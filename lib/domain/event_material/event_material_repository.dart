import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/domain/auth/user_repository.dart';
import 'package:mobile/domain/grpc/auth_interceptor.dart';
import 'package:mobile/domain/grpc/converter.dart';
import 'package:mobile/domain/grpc/grpc.dart';
import 'package:mobile/proto/common/v1/common.pb.dart';
import 'package:mobile/proto/event/v1/core.pb.dart' as $core;
import 'package:mobile/proto/event/v1/event_material.pbgrpc.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'event_material_repository.freezed.dart';
part 'event_material_repository.g.dart';

@freezed
class State with _$State {
  const State._();

  const factory State({
    required String systemText,
    required bool? isOut,
    required String? remind,
    required $core.Pos? fromPos,
    required String? destination,
    required $core.Pos? destinationPos,
    required $core.MoveType? moveType,
    required String? option,
    required DateTime? start,
    required DateTime? end,
  }) = _State;

  factory State.fromEventMaterial(EventMaterial eventMaterial) {
    return State(
      systemText: generateSystemText(eventMaterial),
      isOut: eventMaterial.isOut,
      remind: eventMaterial.remind,
      fromPos: eventMaterial.fromPos,
      destination: eventMaterial.destination,
      destinationPos: eventMaterial.destinationPos,
      moveType: eventMaterial.moveType,
      option: eventMaterial.option,
      start: eventMaterial.startTime.toDateTime(),
      end: eventMaterial.endTime.toDateTime(),
    );
  }

  static String generateSystemText(EventMaterial mat) {
    final args = [];

    if (mat.hasIsOut()) {
      args.add(mat.isOut ? '外出' : '帰宅');
    }
    if (mat.hasRemind() && mat.remind.isNotEmpty) {
      args.add("リマインド: ${mat.remind}");
    }
    if (mat.hasDestination() && mat.destination.isNotEmpty) {
      args.add("目的地: ${mat.destination}");
    }
    if (mat.hasMoveType() &&
        mat.moveType != $core.MoveType.MOVE_TYPE_UNSPECIFIED &&
        mat.moveType != $core.MoveType.MOVE_TYPE_OTHER) {
      args.add("移動手段: ${mat.moveType}");
    }
    if (mat.hasOption() && mat.option.isNotEmpty) {
      args.add("移動オプション： ${mat.option}");
    }
    if (mat.hasStartTime() && mat.startTime.toDateTime() != null) {
      args.add("開始時間: ${mat.startTime.toDateTime()}");
    }
    if (mat.hasEndTime() && mat.endTime.toDateTime() != null) {
      args.add("終了時間: ${mat.endTime.toDateTime()}");
    }

    return args.join('、');
  }

  EventMaterial toEventMaterial() {
    return EventMaterial(
      isOut: isOut,
      remind: remind,
      fromPos: fromPos,
      destination: destination,
      destinationPos: destinationPos,
      moveType: moveType,
      option: option,
      startTime: start?.toGrpcDateTime(),
      endTime: end?.toGrpcDateTime(),
    );
  }
}

@riverpod
EventMaterialServiceClient eventMaterialServiceClient(
  EventMaterialServiceClientRef ref,
) {
  final channel = ref.read(grpcChannelProvider);
  return EventMaterialServiceClient(channel, interceptors: [AuthInterceptor()]);
}

@riverpod
class EventMaterialRepository extends _$EventMaterialRepository {
  @override
  State? build() => null;

  Future<void> request(String text) async {
    final client = ref.read(eventMaterialServiceClientProvider);
    final user = await ref.read(authStateChangeProvider.future);

    final res = await client.predictEventMaterialItem(
      PredictEventMaterialItemRequest(
        text: state?.systemText ?? text,
        eventMaterial: state?.toEventMaterial(),
        uid: Uid(value: user?.uid),
      ),
    );

    state = State.fromEventMaterial(res.eventMaterial);
  }
}
