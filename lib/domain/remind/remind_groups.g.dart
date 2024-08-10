// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remind_groups.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$remindGroupClientHash() => r'fec6234865d586003082613151550ed579c61294';

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
String _$remindGroupsHash() => r'71d2764ecd6eafc5c6301889de49842d04eeaa16';

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
