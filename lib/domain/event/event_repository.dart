import 'dart:developer';

import 'package:mobile/domain/auth/user_repository.dart';
import 'package:mobile/domain/grpc/auth_interceptor.dart';
import 'package:mobile/domain/grpc/grpc.dart';
import 'package:mobile/proto/common/v1/common.pb.dart';
import 'package:mobile/proto/event/v1/event.pbgrpc.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'event_model.dart';

part 'event_repository.g.dart';

@riverpod
EventServiceClient _client(_ClientRef ref) {
  final channel = ref.watch(grpcChannelProvider);
  return EventServiceClient(channel, interceptors: [AuthInterceptor()]);
}

@riverpod
class EventRepository extends _$EventRepository {
  @override
  Future<List<EventModel>> build() async {
    return await _fetch();
  }

  Future<List<EventModel>> _fetch() async {
    final client = ref.read(_clientProvider);
    final res = await client.getEvents(GetEventsRequest(
      uid: Uid(
        value: (await ref.read(authStateChangeProvider.future))?.uid,
      ),
    ));
    return res.events.map((e) => EventModel.fromGrpc(event: e)).toList();
  }

  Future<void> create(
    String title,
    TimeTable timeTable,
    List<EventItemModel> items,
    List<UserItemModel> userItems,
  ) async {
    final client = ref.read(_clientProvider);
    log(timeTable.toString(), name: 'timeTable');
    final res = await client.createEvent(
      CreateEventRequest(
        uid: Uid(
          value: (await ref.read(authStateChangeProvider.future))?.uid,
        ),
        timeTable: timeTable,
        userItems: UserItems(
          item: userItems.map((e) => e.value).toList(),
        ),
        eventItem: items.map((e) => e.value).toList(),
        title: title,
      ),
    );

    if (state.value != null) {
      state = AsyncValue.data(
        [
          EventModel.fromGrpc(event: res.event),
          ...state.value!,
        ],
      );
    } else {
      state = AsyncValue.data(
        [EventModel.fromGrpc(event: res.event)],
      );
    }
  }
}

@riverpod
Future<EventModel?> leastEvent(LeastEventRef ref) async {
  final events = await ref.watch(eventRepositoryProvider.future);
  return events.isEmpty
      ? null
      : events.reduce((a, b) {
          final aMoveData =
              a.timeTable.items.whereType<TimeTableItemMoveData>();
          if (aMoveData.isEmpty) return b;
          final bMoveData =
              b.timeTable.items.whereType<TimeTableItemMoveData>();
          if (bMoveData.isEmpty) return a;

          final aTimeTable = aMoveData
              .reduce((a, b) => a.move.from.isBefore(b.move.from) ? a : b);
          final bTimeTable = bMoveData
              .reduce((a, b) => a.move.from.isBefore(b.move.from) ? a : b);
          return aTimeTable.move.from.isBefore(bTimeTable.move.from) ? a : b;
        });
}
