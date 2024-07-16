import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/screen/welcome/welcome_screen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../screen/home/home_screen.dart';

part 'router.g.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

@Riverpod(keepAlive: true)
GoRouter router(RouterRef ref) {
  return GoRouter(
      navigatorKey: _rootNavigatorKey,
      routes: $appRoutes,
      initialLocation: "/welcome",
      debugLogDiagnostics: kDebugMode);
}

//#region HomeRoutes
@TypedGoRoute<HomeRoute>(path: "/home")
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomeScreen();
  }
}
//#endregion

//#region WelcomeRoutes
@TypedGoRoute<WelcomeRoute>(path: "/welcome")
class WelcomeRoute extends GoRouteData {
  const WelcomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const WelcomeScreen();
  }
}
//#endregion