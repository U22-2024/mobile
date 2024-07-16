import 'package:flutter/material.dart';
import 'package:mobile/service/isar/isar_provider.dart';
import 'package:mobile/service/settings/settings_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'settings_provider.g.dart';

@Riverpod(keepAlive: true)
Future<SettingsService> settingsService(SettingsServiceRef ref) async {
  final isar = await ref.watch(isarProvider.future);
  return SettingsService(isar);
}

@riverpod
Stream<ThemeMode> themeMode(ThemeModeRef ref) async* {
  final service = await ref.watch(settingsServiceProvider.future);
  await for (final settings in service.settings()) {
    yield settings.themeMode;
  }
}
