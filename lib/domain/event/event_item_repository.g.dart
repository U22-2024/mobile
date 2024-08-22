// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_item_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$eventItemsByEventHash() => r'2db770fb5d0665cb908fac53bfbaa3147fb2e9a8';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [eventItemsByEvent].
@ProviderFor(eventItemsByEvent)
const eventItemsByEventProvider = EventItemsByEventFamily();

/// See also [eventItemsByEvent].
class EventItemsByEventFamily extends Family {
  /// See also [eventItemsByEvent].
  const EventItemsByEventFamily();

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'eventItemsByEventProvider';

  /// See also [eventItemsByEvent].
  EventItemsByEventProvider call(
    EventModelId eventId,
  ) {
    return EventItemsByEventProvider(
      eventId,
    );
  }

  @visibleForOverriding
  @override
  EventItemsByEventProvider getProviderOverride(
    covariant EventItemsByEventProvider provider,
  ) {
    return call(
      provider.eventId,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(
      FutureOr<List<EventItemModel>> Function(EventItemsByEventRef ref)
          create) {
    return _$EventItemsByEventFamilyOverride(this, create);
  }
}

class _$EventItemsByEventFamilyOverride implements FamilyOverride {
  _$EventItemsByEventFamilyOverride(this.overriddenFamily, this.create);

  final FutureOr<List<EventItemModel>> Function(EventItemsByEventRef ref)
      create;

  @override
  final EventItemsByEventFamily overriddenFamily;

  @override
  EventItemsByEventProvider getProviderOverride(
    covariant EventItemsByEventProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// See also [eventItemsByEvent].
class EventItemsByEventProvider
    extends AutoDisposeFutureProvider<List<EventItemModel>> {
  /// See also [eventItemsByEvent].
  EventItemsByEventProvider(
    EventModelId eventId,
  ) : this._internal(
          (ref) => eventItemsByEvent(
            ref as EventItemsByEventRef,
            eventId,
          ),
          from: eventItemsByEventProvider,
          name: r'eventItemsByEventProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$eventItemsByEventHash,
          dependencies: EventItemsByEventFamily._dependencies,
          allTransitiveDependencies:
              EventItemsByEventFamily._allTransitiveDependencies,
          eventId: eventId,
        );

  EventItemsByEventProvider._internal(
    super.create, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.eventId,
  }) : super.internal();

  final EventModelId eventId;

  @override
  Override overrideWith(
    FutureOr<List<EventItemModel>> Function(EventItemsByEventRef ref) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: EventItemsByEventProvider._internal(
        (ref) => create(ref as EventItemsByEventRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        eventId: eventId,
      ),
    );
  }

  @override
  (EventModelId,) get argument {
    return (eventId,);
  }

  @override
  AutoDisposeFutureProviderElement<List<EventItemModel>> createElement() {
    return _EventItemsByEventProviderElement(this);
  }

  EventItemsByEventProvider _copyWith(
    FutureOr<List<EventItemModel>> Function(EventItemsByEventRef ref) create,
  ) {
    return EventItemsByEventProvider._internal(
      (ref) => create(ref as EventItemsByEventRef),
      name: name,
      dependencies: dependencies,
      allTransitiveDependencies: allTransitiveDependencies,
      debugGetCreateSourceHash: debugGetCreateSourceHash,
      from: from,
      eventId: eventId,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is EventItemsByEventProvider && other.eventId == eventId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, eventId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin EventItemsByEventRef
    on AutoDisposeFutureProviderRef<List<EventItemModel>> {
  /// The parameter `eventId` of this provider.
  EventModelId get eventId;
}

class _EventItemsByEventProviderElement
    extends AutoDisposeFutureProviderElement<List<EventItemModel>>
    with EventItemsByEventRef {
  _EventItemsByEventProviderElement(super.provider);

  @override
  EventModelId get eventId => (origin as EventItemsByEventProvider).eventId;
}

String _$eventItemRepositoryHash() =>
    r'1c28d4f2949367515198a0c4f512e8de8e36be12';

/// See also [EventItemRepository].
@ProviderFor(EventItemRepository)
final eventItemRepositoryProvider = AutoDisposeAsyncNotifierProvider<
    EventItemRepository, List<EventItemModel>>.internal(
  EventItemRepository.new,
  name: r'eventItemRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$eventItemRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$EventItemRepository = AutoDisposeAsyncNotifier<List<EventItemModel>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
