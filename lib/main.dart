import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile/firebase_options.dart';
import 'package:mobile/presentation/app/main_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  if (kDebugMode) {
    final host = Platform.isAndroid ? "10.0.2.2" : "localhost";
    FirebaseAuth.instance.useAuthEmulator(host, 9099);
  }

  runApp(const ProviderScope(
    child: MainApp(),
  ));
}
