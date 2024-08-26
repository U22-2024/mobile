import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/domain/event/event_model.dart';
import 'package:mobile/presentation/router/navigator_key.dart';
import 'package:mobile/screens/event_detail/event_detail.dart';

class EventDetailBranch extends StatefulShellBranchData {
  static final $navigatorKey = eventDetailNavigatorKey;
}

class EventDetailRoute extends GoRouteData {
  const EventDetailRoute({
    required this.eventId,
  });

  static const location = '/event_detail';

  final String eventId;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EventDetailScreen(eventId: EventModelId(eventId));
  }
}
