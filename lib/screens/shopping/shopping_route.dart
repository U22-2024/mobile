import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/presentation/router/navigator_key.dart';

import 'shopping.dart';

class ShoppingBranch extends StatefulShellBranchData {
  static final $navigatorKey = shoppingNavigatorKey;
}

class ShoppingRoute extends GoRouteData {
  const ShoppingRoute();

  static const location = '/shopping';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ShoppingScreen();
  }
}
