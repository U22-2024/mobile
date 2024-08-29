// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_material_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$clientHash() => r'f8aa98ea8188238ee45fe87c62848af331cd20fd';

/// See also [_client].
@ProviderFor(_client)
final _clientProvider =
    AutoDisposeProvider<EventMaterialServiceClient>.internal(
  _client,
  name: r'_clientProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$clientHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _ClientRef = AutoDisposeProviderRef<EventMaterialServiceClient>;
String _$predictPlacesByTextHash() =>
    r'6b0883b1f48fd77b8b795221c1061ac5ed6cc04a';

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

/// See also [predictPlacesByText].
@ProviderFor(predictPlacesByText)
const predictPlacesByTextProvider = PredictPlacesByTextFamily();

/// See also [predictPlacesByText].
class PredictPlacesByTextFamily extends Family {
  /// See also [predictPlacesByText].
  const PredictPlacesByTextFamily();

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'predictPlacesByTextProvider';

  /// See also [predictPlacesByText].
  PredictPlacesByTextProvider call(
    String placeText,
  ) {
    return PredictPlacesByTextProvider(
      placeText,
    );
  }

  @visibleForOverriding
  @override
  PredictPlacesByTextProvider getProviderOverride(
    covariant PredictPlacesByTextProvider provider,
  ) {
    return call(
      provider.placeText,
    );
  }

  /// Enables overriding the behavior of this provider, no matter the parameters.
  Override overrideWith(
      FutureOr<List<Place>> Function(PredictPlacesByTextRef ref) create) {
    return _$PredictPlacesByTextFamilyOverride(this, create);
  }
}

class _$PredictPlacesByTextFamilyOverride implements FamilyOverride {
  _$PredictPlacesByTextFamilyOverride(this.overriddenFamily, this.create);

  final FutureOr<List<Place>> Function(PredictPlacesByTextRef ref) create;

  @override
  final PredictPlacesByTextFamily overriddenFamily;

  @override
  PredictPlacesByTextProvider getProviderOverride(
    covariant PredictPlacesByTextProvider provider,
  ) {
    return provider._copyWith(create);
  }
}

/// See also [predictPlacesByText].
class PredictPlacesByTextProvider
    extends AutoDisposeFutureProvider<List<Place>> {
  /// See also [predictPlacesByText].
  PredictPlacesByTextProvider(
    String placeText,
  ) : this._internal(
          (ref) => predictPlacesByText(
            ref as PredictPlacesByTextRef,
            placeText,
          ),
          from: predictPlacesByTextProvider,
          name: r'predictPlacesByTextProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$predictPlacesByTextHash,
          dependencies: PredictPlacesByTextFamily._dependencies,
          allTransitiveDependencies:
              PredictPlacesByTextFamily._allTransitiveDependencies,
          placeText: placeText,
        );

  PredictPlacesByTextProvider._internal(
    super.create, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.placeText,
  }) : super.internal();

  final String placeText;

  @override
  Override overrideWith(
    FutureOr<List<Place>> Function(PredictPlacesByTextRef ref) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PredictPlacesByTextProvider._internal(
        (ref) => create(ref as PredictPlacesByTextRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        placeText: placeText,
      ),
    );
  }

  @override
  (String,) get argument {
    return (placeText,);
  }

  @override
  AutoDisposeFutureProviderElement<List<Place>> createElement() {
    return _PredictPlacesByTextProviderElement(this);
  }

  PredictPlacesByTextProvider _copyWith(
    FutureOr<List<Place>> Function(PredictPlacesByTextRef ref) create,
  ) {
    return PredictPlacesByTextProvider._internal(
      (ref) => create(ref as PredictPlacesByTextRef),
      name: name,
      dependencies: dependencies,
      allTransitiveDependencies: allTransitiveDependencies,
      debugGetCreateSourceHash: debugGetCreateSourceHash,
      from: from,
      placeText: placeText,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is PredictPlacesByTextProvider && other.placeText == placeText;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, placeText.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PredictPlacesByTextRef on AutoDisposeFutureProviderRef<List<Place>> {
  /// The parameter `placeText` of this provider.
  String get placeText;
}

class _PredictPlacesByTextProviderElement
    extends AutoDisposeFutureProviderElement<List<Place>>
    with PredictPlacesByTextRef {
  _PredictPlacesByTextProviderElement(super.provider);

  @override
  String get placeText => (origin as PredictPlacesByTextProvider).placeText;
}

String _$eventMaterialRepositoryHash() =>
    r'c5c11c04adbba17e684d44d06b8f811d2fa62bb3';

/// See also [EventMaterialRepository].
@ProviderFor(EventMaterialRepository)
final eventMaterialRepositoryProvider =
    AutoDisposeNotifierProvider<EventMaterialRepository, State>.internal(
  EventMaterialRepository.new,
  name: r'eventMaterialRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$eventMaterialRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$EventMaterialRepository = AutoDisposeNotifier<State>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
