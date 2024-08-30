// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grpc.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$grpcChannelHash() => r'cc35986b2a88ea4260c8727306c850783ae21cc1';

/// See also [grpcChannel].
@ProviderFor(grpcChannel)
final grpcChannelProvider = AutoDisposeProvider<ClientChannel>.internal(
  grpcChannel,
  name: r'grpcChannelProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$grpcChannelHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GrpcChannelRef = AutoDisposeProviderRef<ClientChannel>;
String _$grpcRemindGroupHash() => r'f806774bbafb8e227cb4e2f4f25b1fce491036ce';

/// See also [grpcRemindGroup].
@ProviderFor(grpcRemindGroup)
final grpcRemindGroupProvider =
    AutoDisposeProvider<RemindGroupServiceClient>.internal(
  grpcRemindGroup,
  name: r'grpcRemindGroupProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$grpcRemindGroupHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GrpcRemindGroupRef = AutoDisposeProviderRef<RemindGroupServiceClient>;
String _$grpcRemindHash() => r'5bea9c9c9afac11ac69c61d86474e1c6d0fe07ef';

/// See also [grpcRemind].
@ProviderFor(grpcRemind)
final grpcRemindProvider = AutoDisposeProvider<RemindServiceClient>.internal(
  grpcRemind,
  name: r'grpcRemindProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$grpcRemindHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GrpcRemindRef = AutoDisposeProviderRef<RemindServiceClient>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
