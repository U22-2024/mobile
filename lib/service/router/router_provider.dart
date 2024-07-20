import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/ui/screen/welcome/password_signin_screen.dart';
import 'package:mobile/ui/screen/welcome/signup_screen.dart';
import 'package:mobile/ui/screen/home/home_screen.dart';
import 'package:mobile/ui/screen/welcome/welcome_screen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router_provider.g.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

@Riverpod(keepAlive: true)
GoRouter router(RouterRef ref) {
  return GoRouter(
      navigatorKey: _rootNavigatorKey,
      routes: $appRoutes,
      initialLocation: WelcomeScreen.routeName,
      debugLogDiagnostics: kDebugMode);
}

//#region HomeRoutes
@TypedGoRoute<HomeRoute>(path: HomeScreen.routeName)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomeScreen();
  }
}
//#endregion

//#region WelcomeRoutes
@TypedGoRoute<WelcomeRoute>(
  path: WelcomeScreen.routeName,
  routes: [
    TypedGoRoute<SignupRoute>(path: SignUpScreen.routeName),
    TypedGoRoute<PasswordSignInRoute>(path: PasswordSignInScreen.routeName),
  ],
)
class WelcomeRoute extends GoRouteData {
  const WelcomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const WelcomeScreen();
  }
}

class SignupRoute extends GoRouteData {
  const SignupRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SignUpScreen();
  }
}

class PasswordSignInRoute extends GoRouteData {
  const PasswordSignInRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const PasswordSignInScreen();
  }
}
//#endregion
