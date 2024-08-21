import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/domain/auth/user_repository.dart';
import 'package:mobile/presentation/router/router.dart';
import 'package:mobile/screens/home/home_route.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router_provider.g.dart';

@riverpod
GoRouter router(RouterRef ref) {
  // ユーザーの認証状態を監視
  final authState = ref.watch(authStateChangeProvider);

  return GoRouter(
    // UNRESOLVED: rootNavigatorKeyを指定するとエラーになる
    // navigatorKey: rootNavigatorKey,
    routes: $appRoutes,
    debugLogDiagnostics: kDebugMode,
    redirect: (context, state) {
      if (authState.isLoading || authState.hasError) return null;

      final isAuth = authState.valueOrNull != null;
      final isHome = state.matchedLocation == HomeRoute.location;
      if (isHome && !isAuth) {
        return LoginRoute.location;
      }

      final isLoggingIn = state.matchedLocation == LoginRoute.location;
      if (isLoggingIn) {
        return isAuth ? HomeRoute.location : null;
      }

      return isAuth ? null : LoginRoute.location;
    },
  );
}
