import 'dart:developer';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:mobile/firebase_options.dart';
import 'package:mobile/ui/app.dart';

Future<bool> _isEmulator() async {
  final deviceInfo = DeviceInfoPlugin();
  if (defaultTargetPlatform == TargetPlatform.android) {
    final androidInfo = await deviceInfo.androidInfo;
    return androidInfo.isPhysicalDevice == false;
  } else if (defaultTargetPlatform == TargetPlatform.iOS) {
    final iosInfo = await deviceInfo.iosInfo;
    return iosInfo.isPhysicalDevice == false;
  } else {
    return false;
  }
}

Future<bool> _isEnableAuthEmulator(String projectId) async {
  final isEmulator = await _isEmulator();
  final host = switch (defaultTargetPlatform) {
    TargetPlatform.android => "10.0.2.2",
    TargetPlatform.windows => "localhost",
    TargetPlatform.linux => "localhost",
    _ => "localhost"
  };

  if (!isEmulator && host != "localhost") {
    return false;
  }

  try {
    final response = await http.get(Uri.http(
      "$host:9099",
      "/emulator/v1/projects/$projectId/config",
    ));
    return response.statusCode == 200;
  } catch (e) {
    return false;
  }
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final firebaseOptions = DefaultFirebaseOptions.currentPlatform;
  await Firebase.initializeApp(options: firebaseOptions);

  if (kDebugMode) {
    if (await _isEnableAuthEmulator(firebaseOptions.projectId)) {
      await FirebaseAuth.instance.useAuthEmulator("localhost", 9099);
      log("Connected to the Firebase Emulator Suite.", name: "Firebase");
    } else {
      log("Could not connect to the Firebase Emulator Suite.",
          name: "Firebase");
    }
  }

  runApp(const ProviderScope(child: MainApp()));
}
