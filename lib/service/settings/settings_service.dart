import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:mobile/models/settings/settings_model.dart';

class SettingsService {
  const SettingsService(this.isar);

  final Isar isar;
  static const _settingsId = 0;

  Stream<SettingsModel> settings() async* {
    final query = isar.settingsModels.where().idEqualTo(_settingsId);

    await for (final result in query.watch()) {
      if (result.isEmpty) {
        yield await updateSettings(SettingsModel(
          id: _settingsId,
          themeMode: ThemeMode.system,
        ));
      }
      yield result.first;
    }
  }

  Future<SettingsModel> updateSettings(SettingsModel newSettings) async {
    await isar.writeAsync((isar) async {
      isar.settingsModels.put(newSettings);
    });
    return newSettings;
  }
}
