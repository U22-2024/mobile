// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$leastEventHash() => r'0fd10d1b97e33644f4c487031e3363172767617d';

/// See also [leastEvent].
@ProviderFor(leastEvent)
final leastEventProvider = AutoDisposeFutureProvider<EventModel?>.internal(
  leastEvent,
  name: r'leastEventProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$leastEventHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef LeastEventRef = AutoDisposeFutureProviderRef<EventModel?>;
String _$eventRepositoryHash() => r'0d1adbf3aa95924985e469e2d10a296acbe9a764';

/// See also [EventRepository].
@ProviderFor(EventRepository)
final eventRepositoryProvider = AutoDisposeAsyncNotifierProvider<
    EventRepository, List<EventModel>>.internal(
  EventRepository.new,
  name: r'eventRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$eventRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$EventRepository = AutoDisposeAsyncNotifier<List<EventModel>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
