import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:mobile/domain/auth/user_repository.dart';
import 'package:mobile/domain/event_material/event_material_model.dart';
import 'package:mobile/domain/grpc/auth_interceptor.dart';
import 'package:mobile/domain/grpc/converter.dart';
import 'package:mobile/domain/grpc/grpc.dart';
import 'package:mobile/proto/common/v1/common.pb.dart';
import 'package:mobile/proto/event/v1/core.pb.dart' as $core;
import 'package:mobile/proto/event/v1/event_material.pbgrpc.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'event_material_repository.freezed.dart';
part 'event_material_repository.g.dart';

@riverpod
EventMaterialServiceClient _client(_ClientRef ref) {
  final channel = ref.watch(grpcChannelProvider);
  return EventMaterialServiceClient(channel, interceptors: [AuthInterceptor()]);
}

//#region PredictSource
@freezed
class PredictSourceState with _$PredictSourceState {
  const PredictSourceState._();
  const factory PredictSourceState({
    String? destination,
    $core.MoveType? moveType,
    $core.DateTime? startAt,
    $core.DateTime? endAt,
  }) = _PredictSourceState;

  @override
  String toString() {
    final buffer = StringBuffer();
    buffer.write('\n<additional_info>');
    if (destination?.isNotEmpty ?? false) {
      buffer.write('<destination>$destination</destination>');
    }
    if (moveType != null) {
      buffer.write('<move_type>${moveType!.name}</move_type>');
    }
    if (startAt != null) {
      buffer.write('<start_at>${startAt!.toDateTime()}</start_at>');
    }
    if (endAt != null) {
      buffer.write('<end_at>${endAt!.toDateTime()}</end_at>');
    }
    buffer.write('</additional_info>');
    return buffer.toString();
  }

  get isFilled =>
      (destination?.isNotEmpty ?? false) &&
      moveType != null &&
      startAt != null &&
      endAt != null;
}

@riverpod
class PredictSource extends _$PredictSource {
  @override
  PredictSourceState build() => const PredictSourceState();

  set destination(String destination) =>
      state = state.copyWith(destination: destination);
  set moveType($core.MoveType moveType) =>
      state = state.copyWith(moveType: moveType);
  set startAt(DateTime startAt) =>
      state = state.copyWith(startAt: startAt.toGrpcDateTime());
  set endAt(DateTime endAt) =>
      state = state.copyWith(endAt: endAt.toGrpcDateTime());
  set fromEventMaterial(EventMaterial eventMaterial) {
    state = PredictSourceState(
      destination: eventMaterial.destination,
      moveType: eventMaterial.moveType,
      startAt: eventMaterial.startTime,
      endAt: eventMaterial.endTime,
    );
  }
}
//#endregion

//#region Client EventMaterial Data
@freezed
class ClientEventMaterialState with _$ClientEventMaterialState {
  const ClientEventMaterialState._();
  const factory ClientEventMaterialState({
    $core.Pos? fromPos,
    $core.Pos? destPos,
  }) = _ClientEventMaterialState;

  get isFilled => fromPos != null && destPos != null;
}

@riverpod
class ClientEventMaterial extends _$ClientEventMaterial {
  @override
  ClientEventMaterialState build() => const ClientEventMaterialState();

  set destPos($core.Pos destPos) => state = state.copyWith(destPos: destPos);

  Future<Position> updateCurrentPos() async {
    if (!(await Geolocator.isLocationServiceEnabled())) {
      throw Exception('位置情報サービスが有効ではありません');
    }
    final permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      await Geolocator.requestPermission();
      final newPermission = await Geolocator.checkPermission();
      if (newPermission == LocationPermission.denied) {
        throw Exception('位置情報の許可が得られませんでした');
      }
    }

    final pos = await Geolocator.getCurrentPosition();
    state = state.copyWith(fromPos: pos.toGrpcPos());
    return pos;
  }
}
//#endregion

//#region AI Only Predict Data
@freezed
class AiOnlyPredictState with _$AiOnlyPredictState {
  const AiOnlyPredictState._();
  const factory AiOnlyPredictState({
    bool? isOut,
    String? remind,
  }) = _AiOnlyPredictState;

  get isFilled => isOut != null && (remind?.isNotEmpty ?? false);
}

@riverpod
class AiOnlyPredict extends _$AiOnlyPredict {
  @override
  AiOnlyPredictState build() => const AiOnlyPredictState();

  set isOut(bool isOut) => state = state.copyWith(isOut: isOut);
  set remind(String remind) => state = state.copyWith(remind: remind);
  set fromEventMaterial(EventMaterial eventMaterial) {
    state = AiOnlyPredictState(
      isOut: eventMaterial.isOut,
      remind: eventMaterial.remind,
    );
  }
}
//#endregion

@riverpod
class EventMaterialRepository extends _$EventMaterialRepository {
  @override
  EventMaterialModel build() {
    final source = ref.read(predictSourceProvider);
    final clientOnly = ref.read(clientEventMaterialProvider);
    final aiOnly = ref.read(aiOnlyPredictProvider);

    return EventMaterialModel.fromSource(
      source: source,
      clientOnly: clientOnly,
      aiOnly: aiOnly,
    );
  }

  Future<bool> predict(String userText) async {
    if (state.isFilled) return true;

    final client = ref.read(_clientProvider);
    final predictSource = ref.read(predictSourceProvider);
    final user = await ref.read(authStateChangeProvider.future);

    final res = await client.predictEventMaterialItem(
      PredictEventMaterialItemRequest(
        text: userText + predictSource.toString(),
        eventMaterial: build().grpcEventMaterial,
        uid: Uid(value: user?.uid),
      ),
    );

    // レスポンスをもとにして更新
    ref.read(predictSourceProvider.notifier).fromEventMaterial =
        res.eventMaterial;
    ref.read(aiOnlyPredictProvider.notifier).fromEventMaterial =
        res.eventMaterial;
    state = EventMaterialModel.fromGrpc(res.eventMaterial);

    if (state.isFilled) return true;
    return false;
  }
}

@riverpod
Future<List<Place>> predictPlacesByText(
    PredictPlacesByTextRef ref, String placeText) async {
  final client = ref.read(_clientProvider);
  final user = await ref.read(authStateChangeProvider.future);

  // 現在地情報を更新
  final currentPos =
      await ref.read(clientEventMaterialProvider.notifier).updateCurrentPos();

  final res = await client.predictPositionsFromText(
    PredictPositionsFromTextRequest(
      text: placeText,
      fromPos: currentPos.toGrpcPos(),
      uid: Uid(value: user?.uid),
    ),
  );
  return res.place.toSet().toList();
}
