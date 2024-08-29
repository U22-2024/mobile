// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$clientHash() => r'84bc4905519dd7e5d076f3dff527ca9691794419';

/// See also [_client].
@ProviderFor(_client)
final _clientProvider = AutoDisposeProvider<AdviceOutingServiceClient>.internal(
  _client,
  name: r'_clientProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$clientHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _ClientRef = AutoDisposeProviderRef<AdviceOutingServiceClient>;
String _$getWeatherHash() => r'5f94c42661f89215188564f070e396e117da62bc';

/// See also [getWeather].
@ProviderFor(getWeather)
final getWeatherProvider = AutoDisposeFutureProvider<WeatherState?>.internal(
  getWeather,
  name: r'getWeatherProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getWeatherHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetWeatherRef = AutoDisposeFutureProviderRef<WeatherState?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
