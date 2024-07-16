// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$settingsServiceHash() => r'cfe64c2a8bc8e675f91805c156b2dc30cf286d34';

/// See also [settingsService].
@ProviderFor(settingsService)
final settingsServiceProvider = FutureProvider<SettingsService>.internal(
  settingsService,
  name: r'settingsServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$settingsServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SettingsServiceRef = FutureProviderRef<SettingsService>;
String _$themeModeHash() => r'7b6e0d4e950f8edeb3e0287ca96bde463b06c718';

/// See also [themeMode].
@ProviderFor(themeMode)
final themeModeProvider = AutoDisposeStreamProvider<ThemeMode>.internal(
  themeMode,
  name: r'themeModeProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$themeModeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ThemeModeRef = AutoDisposeStreamProviderRef<ThemeMode>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
