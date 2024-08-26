import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/presentation/router/navigator_key.dart';
import 'package:mobile/screens/event_list/event_list.dart';

class EventListBranch extends StatefulShellBranchData {
  static final $navigatorKey = eventListNavigatorKey;
}

class EventListRoute extends GoRouteData {
  const EventListRoute();

  static const location = '/event_list';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const EventListScreen();
  }
}
