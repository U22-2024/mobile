import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:firebase_ui_oauth_google/firebase_ui_oauth_google.dart';
import 'package:flutter/material.dart';
import 'package:mobile/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const routeLocation = "/login";

  @override
  Widget build(BuildContext context) {
    return SignInScreen(
      providers: [
        EmailAuthProvider(),
        GoogleProvider(clientId: firebaseWebClientId),
      ],
    );
  }
}
