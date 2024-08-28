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
    r'f469fb41d79ca648f7213c2d9e7be5d15de2b58a';

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

String _$predictSourceHash() => r'68ab7391102c8e868f4546ecba24a4fc1104e136';

/// See also [PredictSource].
@ProviderFor(PredictSource)
final predictSourceProvider =
    AutoDisposeNotifierProvider<PredictSource, PredictSourceState>.internal(
  PredictSource.new,
  name: r'predictSourceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$predictSourceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PredictSource = AutoDisposeNotifier<PredictSourceState>;
String _$clientEventMaterialHash() =>
    r'cdbab39d86b3f0355dd210d1b9b72728c59762ab';

/// See also [ClientEventMaterial].
@ProviderFor(ClientEventMaterial)
final clientEventMaterialProvider = AutoDisposeNotifierProvider<
    ClientEventMaterial, ClientEventMaterialState>.internal(
  ClientEventMaterial.new,
  name: r'clientEventMaterialProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$clientEventMaterialHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ClientEventMaterial = AutoDisposeNotifier<ClientEventMaterialState>;
String _$aiOnlyPredictHash() => r'886fa09ae2556d9cd3bb411648295abd5e0cc04e';

/// See also [AiOnlyPredict].
@ProviderFor(AiOnlyPredict)
final aiOnlyPredictProvider =
    AutoDisposeNotifierProvider<AiOnlyPredict, AiOnlyPredictState>.internal(
  AiOnlyPredict.new,
  name: r'aiOnlyPredictProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$aiOnlyPredictHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AiOnlyPredict = AutoDisposeNotifier<AiOnlyPredictState>;
String _$eventMaterialRepositoryHash() =>
    r'bb43d3f9c24b60da16c7ffd64e1f3b62e488ad97';

/// See also [EventMaterialRepository].
@ProviderFor(EventMaterialRepository)
final eventMaterialRepositoryProvider = AutoDisposeNotifierProvider<
    EventMaterialRepository, EventMaterialModel>.internal(
  EventMaterialRepository.new,
  name: r'eventMaterialRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$eventMaterialRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$EventMaterialRepository = AutoDisposeNotifier<EventMaterialModel>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
