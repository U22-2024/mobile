import 'package:flutter/material.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: "Root");

final homeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: "Home");
final loginNavigatorKey = GlobalKey<NavigatorState>(debugLabel: "Login");
final eventListNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: "EventList");
final eventDetailNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: "EventDetail");
