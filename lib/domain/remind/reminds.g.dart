// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reminds.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$remindsPerGroupHash() => r'08afa1881ba9fca476455ccb8eeb639cac65b172';

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

/// リマインドグループごとのリマインド
///
/// Copied from [remindsPerGroup].
@ProviderFor(remindsPerGroup)
const remindsPerGroupProvider = RemindsPerGroupFamily();

/// リマインドグループごとのリマインド
///
/// Copied from [remindsPerGroup].
class RemindsPerGroupFamily extends Family<List<Remind>> {
  /// リマインドグループごとのリマインド
  ///
  /// Copied from [remindsPerGroup].
  const RemindsPerGroupFamily();

  /// リマインドグループごとのリマインド
  ///
  /// Copied from [remindsPerGroup].
  RemindsPerGroupProvider call(
    RemindGroup group,
  ) {
    return RemindsPerGroupProvider(
      group,
    );
  }

  @override
  RemindsPerGroupProvider getProviderOverride(
    covariant RemindsPerGroupProvider provider,
  ) {
    return call(
      provider.group,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'remindsPerGroupProvider';
}

/// リマインドグループごとのリマインド
///
/// Copied from [remindsPerGroup].
class RemindsPerGroupProvider extends AutoDisposeProvider<List<Remind>> {
  /// リマインドグループごとのリマインド
  ///
  /// Copied from [remindsPerGroup].
  RemindsPerGroupProvider(
    RemindGroup group,
  ) : this._internal(
          (ref) => remindsPerGroup(
            ref as RemindsPerGroupRef,
            group,
          ),
          from: remindsPerGroupProvider,
          name: r'remindsPerGroupProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$remindsPerGroupHash,
          dependencies: RemindsPerGroupFamily._dependencies,
          allTransitiveDependencies:
              RemindsPerGroupFamily._allTransitiveDependencies,
          group: group,
        );

  RemindsPerGroupProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.group,
  }) : super.internal();

  final RemindGroup group;

  @override
  Override overrideWith(
    List<Remind> Function(RemindsPerGroupRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RemindsPerGroupProvider._internal(
        (ref) => create(ref as RemindsPerGroupRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        group: group,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<List<Remind>> createElement() {
    return _RemindsPerGroupProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RemindsPerGroupProvider && other.group == group;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, group.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin RemindsPerGroupRef on AutoDisposeProviderRef<List<Remind>> {
  /// The parameter `group` of this provider.
  RemindGroup get group;
}

class _RemindsPerGroupProviderElement
    extends AutoDisposeProviderElement<List<Remind>> with RemindsPerGroupRef {
  _RemindsPerGroupProviderElement(super.provider);

  @override
  RemindGroup get group => (origin as RemindsPerGroupProvider).group;
}

String _$remindsHash() => r'1aac6f8d60faf7b8a1c856b9e1197ef5ce631374';

/// リマインドグループに関わらず全てのリマインドを管理するリポジトリ
///
/// Copied from [Reminds].
@ProviderFor(Reminds)
final remindsProvider =
    AutoDisposeNotifierProvider<Reminds, List<Remind>>.internal(
  Reminds.new,
  name: r'remindsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$remindsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Reminds = AutoDisposeNotifier<List<Remind>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
