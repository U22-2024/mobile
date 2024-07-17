import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

part 'settings_model.g.dart';

@collection
class SettingsModel {
  SettingsModel({
    required this.id,
    required this.themeMode,
  });

  final int id;
  final ThemeMode themeMode;
}
