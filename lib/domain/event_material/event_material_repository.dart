import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:mobile/domain/auth/user_repository.dart';
import 'package:mobile/domain/event/event_model.dart';
import 'package:mobile/domain/event/event_repository.dart';
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
    if (startAt?.toDateTime() != null) {
      buffer.write('<start_at>${startAt!.toDateTime()}</start_at>');
    }
    if (endAt?.toDateTime() != null) {
      buffer.write('<end_at>${endAt!.toDateTime()}</end_at>');
    }
    buffer.write('</additional_info>');
    return buffer.toString();
  }

  get isFilled =>
      (destination?.isNotEmpty ?? false) &&
      moveType != null &&
      startAt?.toDateTime() != null &&
      endAt?.toDateTime() != null;
}

@freezed
class ClientOnlyState with _$ClientOnlyState {
  const ClientOnlyState._();
  const factory ClientOnlyState({
    $core.Pos? fromPos,
    $core.Pos? destPos,
  }) = _ClientOnlyState;

  get isFilled => fromPos != null && destPos != null;
}

@freezed
class AiOnlyPredictState with _$AiOnlyPredictState {
  const AiOnlyPredictState._();
  const factory AiOnlyPredictState({
    bool? isOut,
    String? remind,
  }) = _AiOnlyPredictState;

  get isFilled => isOut != null && (remind?.isNotEmpty ?? false);
}

@freezed
class State with _$State {
  const State._();
  const factory State({
    @Default(PredictSourceState()) PredictSourceState predictSource,
    @Default(ClientOnlyState()) ClientOnlyState clientOnlyState,
    @Default(AiOnlyPredictState()) AiOnlyPredictState aiOnlyPredict,
  }) = _State;

  bool get isFilled =>
      predictSource.isFilled &&
      clientOnlyState.isFilled &&
      aiOnlyPredict.isFilled;
}

@riverpod
class EventMaterialRepository extends _$EventMaterialRepository {
  @override
  State build() {
    return const State();
  }

  Future<void> _createEvent(
    EventMaterialServiceClient client,
    User user,
    String text,
    TimeTableModel timeTable,
  ) async {
    final eventItems = await client.predictEventItem(PredictEventItemRequest(
      uid: Uid(value: user.uid),
      text: text,
    ));

    ref.read(eventRepositoryProvider.notifier).create(
      text,
      timeTable,
      eventItems.eventItem.map((e) => EventItemModel(value: e)).toList(),
      [],
    );
  }

  Future<bool> predict(String userText) async {
    // 全てのフィールドが埋まっているなら予測せずにtrueを返す
    if (state.isFilled) {
      log("state is filled", name: 'EventMaterialRepository');
      return true;
    }

    final client = ref.read(_clientProvider);
    final user = await ref.read(authStateChangeProvider.future);

    final res = await client.predictEventMaterialItem(
      PredictEventMaterialItemRequest(
        text: userText + state.predictSource.toString(),
        eventMaterial: EventMaterialModel.fromSource(
          source: state.predictSource,
          clientOnly: state.clientOnlyState,
          aiOnly: state.aiOnlyPredict,
        ).grpcEventMaterial,
        uid: Uid(value: user?.uid),
      ),
    );

    // レスポンスをもとにして更新
    state = state.copyWith(
      predictSource: state.predictSource.copyWith(
        destination: res.eventMaterial.destination,
        moveType: res.eventMaterial.moveType,
        startAt: res.eventMaterial.startTime,
        endAt: res.eventMaterial.endTime,
      ),
      aiOnlyPredict: state.aiOnlyPredict.copyWith(
        isOut: res.eventMaterial.isOut,
        remind: res.eventMaterial.remind,
      ),
    );

    if (state.isFilled) return true;
    return false;
  }

  Future<Position> updateCurrentPos() async {
    final isEnable = await Geolocator.isLocationServiceEnabled();
    if (!isEnable) {
      throw Exception('位置情報が有効になっていません');
    }
    final permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      await Geolocator.requestPermission();
      if (await Geolocator.checkPermission() == LocationPermission.denied) {
        throw Exception('位置情報の許可がされていません');
      }
    }

    final pos = await Geolocator.getCurrentPosition();
    state = state.copyWith(
      clientOnlyState: state.clientOnlyState.copyWith(
        fromPos: pos.toGrpcPos(),
      ),
    );
    return pos;
  }

  void setDestination(Place place) {
    state = state.copyWith(
      predictSource: state.predictSource.copyWith(
        destination: place.name,
      ),
      clientOnlyState: state.clientOnlyState.copyWith(
        destPos: place.pos,
      ),
    );
  }

  void setMoveType($core.MoveType moveType) {
    state = state.copyWith(
      predictSource: state.predictSource.copyWith(
        moveType: moveType,
      ),
    );
  }

  void setStartAt(DateTime startAt) {
    state = state.copyWith(
      predictSource: state.predictSource.copyWith(
        startAt: startAt.toGrpcDateTime(),
      ),
    );
  }

  void setEndAt(DateTime endAt) {
    state = state.copyWith(
      predictSource: state.predictSource.copyWith(
        endAt: endAt.toGrpcDateTime(),
      ),
    );
  }
}

@riverpod
Future<List<Place>> predictPlacesByText(
    PredictPlacesByTextRef ref, String placeText) async {
  final client = ref.read(_clientProvider);
  final user = await ref.read(authStateChangeProvider.future);

  // 現在地情報を更新
  final currentPos = await ref
      .read(eventMaterialRepositoryProvider.notifier)
      .updateCurrentPos();

  final res = await client.predictPositionsFromText(
    PredictPositionsFromTextRequest(
      text: placeText,
      fromPos: currentPos.toGrpcPos(),
      uid: Uid(value: user?.uid),
    ),
  );
  return res.place.toSet().toList();
}

@riverpod
Future<List<TimeTableModel>> predictTimeTable(PredictTimeTableRef ref) async {
  final client = ref.read(_clientProvider);
  final user = await ref.read(authStateChangeProvider.future);
  final state = ref.read(eventMaterialRepositoryProvider);

  final timeTable = await client.predictTimeTable(PredictTimeTableRequest(
    uid: Uid(value: user?.uid),
    eventMaterial: EventMaterialModel.fromSource(
      source: state.predictSource,
      clientOnly: state.clientOnlyState,
      aiOnly: state.aiOnlyPredict,
    ).grpcEventMaterial,
    isGoing: true,
  ));
  return timeTable.timeTable
      .map((e) => TimeTableModel.fromGrpc(timeTable: e))
      .toList();
}

@riverpod
Future<List<String>> predictEventItems(
  PredictEventItemsRef ref,
  String userText,
) async {
  final client = ref.read(_clientProvider);
  final user = await ref.read(authStateChangeProvider.future);
  final state = ref.read(eventMaterialRepositoryProvider);

  final res = await client.predictEventItem(PredictEventItemRequest(
    uid: Uid(value: user?.uid),
    text: userText + state.predictSource.toString(),
  ));
  return res.eventItem;
}
