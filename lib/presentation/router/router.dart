import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/domain/auth/user_repository.dart';
import 'package:mobile/presentation/app/splash_screen.dart';
import 'package:mobile/presentation/home/home_screen.dart';
import 'package:mobile/presentation/home/remind/manage_group/manage_group_screen.dart';
import 'package:mobile/presentation/home/remind/remind_screen.dart';
import 'package:mobile/presentation/login/login_screen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

@Riverpod(keepAlive: true)
GoRouter router(RouterRef ref) {
  // ユーザーの認証状態を監視
  final authState = ref.watch(authStateChangeProvider);

  return GoRouter(
      navigatorKey: _rootNavigatorKey,
      routes: $appRoutes,
      debugLogDiagnostics: kDebugMode,
      redirect: (context, state) {
        if (authState.isLoading || authState.hasError) return null;

        final isAuth = authState.valueOrNull != null;
        final isSplash = state.matchedLocation == SplashScreen.routeLocation;
        if (isSplash) {
          return isAuth ? HomeScreen.routeLocation : LoginScreen.routeLocation;
        }

        final isLoggingIn = state.matchedLocation == LoginScreen.routeLocation;
        if (isLoggingIn) {
          return isAuth ? HomeScreen.routeLocation : null;
        }

        return isAuth ? null : LoginScreen.routeLocation;
      });
}

//#region Routes
@TypedGoRoute<SplashRoute>(path: SplashScreen.routeLocation)
class SplashRoute extends GoRouteData {
  const SplashRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SplashScreen();
  }
}

@TypedGoRoute<HomeRoute>(
  path: HomeScreen.routeLocation,
  routes: [
    TypedGoRoute<RemindRoute>(
      path: RemindScreen.routeLocation,
      routes: [
        TypedGoRoute<ManageRemindGroupRoute>(
          path: ManageGroupScreen.routeLocation,
        ),
      ],
    ),
  ],
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomeScreen();
  }
}

class RemindRoute extends GoRouteData {
  const RemindRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return RemindScreen();
  }
}

class ManageRemindGroupRoute extends GoRouteData {
  const ManageRemindGroupRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ManageGroupScreen();
  }
}

@TypedGoRoute<LoginRoute>(path: LoginScreen.routeLocation)
class LoginRoute extends GoRouteData {
  const LoginRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LoginScreen();
  }
}
//#endregion Routes
