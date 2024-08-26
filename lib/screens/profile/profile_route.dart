import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/screens/profile/profile.dart';

class ProfileRoute extends GoRouteData {
  const ProfileRoute();

  static const location = "profile";

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ProfileScreen();
  }
}
