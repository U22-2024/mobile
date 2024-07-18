import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:mobile/app.dart';
import 'package:mobile/firebase_options.dart';

Future<bool> _isEnableAuthEmulator(String projectId) async {
  try {
    final response = await http.get(Uri.parse(
        "http://localhost:9099/emulator/v1/projects/$projectId/config"));
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
