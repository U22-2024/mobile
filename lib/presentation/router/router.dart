import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/presentation/root.dart';
import 'package:mobile/screens/home/home_route.dart';
import 'package:mobile/screens/login/login.dart';
import 'package:mobile/screens/shopping/shopping_route.dart';

part 'router.g.dart';

@TypedStatefulShellRoute<RootRoute>(
  branches: [
    // ボトムナビゲーションバーに表示されるブランチ
    TypedStatefulShellBranch<HomeBranch>(
      routes: [
        TypedGoRoute<HomeRoute>(path: HomeRoute.location),
      ],
    ),
    TypedStatefulShellBranch<ShoppingBranch>(
      routes: [
        TypedGoRoute<ShoppingRoute>(path: ShoppingRoute.location),
      ],
    ),
  ],
)
class RootRoute extends StatefulShellRouteData {
  const RootRoute();

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return navigationShell;
  }

  static Widget $navigatorContainerBuilder(
    BuildContext context,
    StatefulNavigationShell navigationShell,
    List<Widget> children,
  ) {
    return RootScreen(
      navigationShell: navigationShell,
      children: children,
    );
  }
}

@TypedGoRoute<LoginRoute>(path: LoginRoute.location)
class LoginRoute extends GoRouteData {
  const LoginRoute();

  static const location = "/login";

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LoginScreen();
  }
}
