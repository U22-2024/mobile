import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'event_repository.freezed.dart';
part 'event_repository.g.dart';

@immutable
class EventModelId {
  const EventModelId(this.value);
  final String value;
}

@freezed
class EventModel with _$EventModel {
  const factory EventModel({
    required EventModelId id,
    required String title,
    required String description,
    required DateTime startAt,
  }) = _EventModel;
}

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
        startAt: DateTime.now(),
        title: '買い物',
        description: '',
      ),
      EventModel(
        id: const EventModelId('2'),
        startAt: DateTime.now().add(const Duration(hours: 6)),
        title: 'Event 2',
        description: 'Description 2',
      ),
      EventModel(
        id: const EventModelId('3'),
        startAt: DateTime.now().add(const Duration(hours: 1)),
        title: 'Event 3',
        description: 'Description 3',
      ),
    ];
  }
}

@riverpod
Future<EventModel?> leastEvent(LeastEventRef ref) async {
  final events = await ref.watch(eventRepositoryProvider.future);
  return events.isEmpty
      ? null
      : events.reduce((a, b) => a.startAt.isBefore(b.startAt) ? a : b);
}
