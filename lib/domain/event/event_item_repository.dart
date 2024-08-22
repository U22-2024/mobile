import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile/domain/event/event_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'event_item_repository.freezed.dart';
part 'event_item_repository.g.dart';

@immutable
class EventItemModelId {
  const EventItemModelId(this.value);
  final String value;
}

@freezed
class EventItemModel with _$EventItemModel {
  const factory EventItemModel({
    required EventItemModelId id,
    required EventModelId eventId,
    required String title,
    required String? description,
    required DateTime startAt,
  }) = _EventItemModel;
}

@riverpod
class EventItemRepository extends _$EventItemRepository {
  @override
  Future<List<EventItemModel>> build() async {
    return await _fetch();
  }

  Future<void> add(
    EventModelId eventID,
    String title,
    String? desc,
    DateTime startAt,
  ) async {
    await Future.delayed(const Duration(seconds: 1));
  }

  Future<List<EventItemModel>> _fetch() async {
    await Future.delayed(const Duration(seconds: 1));

    // TODO: 仮データを返す
    return [
      EventItemModel(
        id: const EventItemModelId('1'),
        eventId: const EventModelId('1'),
        startAt: DateTime.now(),
        title: '10:00に出発、電車と徒歩でサンポート高松へ',
        description: 'Description 1',
      ),
      EventItemModel(
        id: const EventItemModelId('2'),
        eventId: const EventModelId('1'),
        startAt: DateTime.now().add(const Duration(hours: 6)),
        title: '持ち物: 筆記用具、本',
        description: 'Description 2',
      ),
      EventItemModel(
        id: const EventItemModelId('3'),
        eventId: const EventModelId('1'),
        startAt: DateTime.now().add(const Duration(hours: 1)),
        title: 'お母さんからのアドバイス: 雨降るから傘持っていきや',
        description: 'Description 3',
      ),
      EventItemModel(
        id: const EventItemModelId('3'),
        eventId: const EventModelId('2'),
        startAt: DateTime.now().add(const Duration(hours: 1)),
        title: 'Event Item 3',
        description: 'Description 3',
      ),
    ];
  }
}

@riverpod
Future<List<EventItemModel>> eventItemsByEvent(
  EventItemsByEventRef ref,
  EventModelId eventId,
) async {
  final items = await ref.watch(eventItemRepositoryProvider.future);
  return items.where((item) => item.eventId == eventId).toList();
}
