import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/presentation/home/home.dart';
import 'package:mobile/presentation/router/navigator_key.dart';

class HomeBranch extends StatefulShellBranchData {
  static final $navigatorKey = homeNavigatorKey;
}

class HomeRoute extends GoRouteData {
  const HomeRoute();

  static const location = '/';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomeScreen();
  }
}
