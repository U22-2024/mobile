// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remind_groups.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$remindGroupClientHash() => r'ffbd24a1314b1227d0bc58fe6946d79d5454f72e';

/// See also [remindGroupClient].
@ProviderFor(remindGroupClient)
final remindGroupClientProvider =
    AutoDisposeFutureProvider<RemindGroupServiceClient>.internal(
  remindGroupClient,
  name: r'remindGroupClientProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$remindGroupClientHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RemindGroupClientRef
    = AutoDisposeFutureProviderRef<RemindGroupServiceClient>;
String _$remindGroupsHash() => r'f1c41eaa95c861bbc84c5461939be81b07d2b574';

/// See also [RemindGroups].
@ProviderFor(RemindGroups)
final remindGroupsProvider =
    AutoDisposeNotifierProvider<RemindGroups, List<RemindGroup>>.internal(
  RemindGroups.new,
  name: r'remindGroupsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$remindGroupsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$RemindGroups = AutoDisposeNotifier<List<RemindGroup>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
