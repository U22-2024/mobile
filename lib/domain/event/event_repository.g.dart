// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$clientHash() => r'c16a36c76fdb9fe96e43f6b7606a58ab321ed5e0';

/// See also [_client].
@ProviderFor(_client)
final _clientProvider = AutoDisposeProvider<EventServiceClient>.internal(
  _client,
  name: r'_clientProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$clientHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _ClientRef = AutoDisposeProviderRef<EventServiceClient>;
String _$leastEventHash() => r'0650396b0347b4018ae2e39a0fe519c6fcb8872c';

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
String _$eventRepositoryHash() => r'3bddbbb25a34c33623d4a0d3959ada162a7d8b2f';

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
