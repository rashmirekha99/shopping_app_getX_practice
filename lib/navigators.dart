import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> globalNavigatorkey =
    GlobalKey<NavigatorState>(debugLabel: 'global');

final GlobalKey<NavigatorState> feedNavigatorkey =
    GlobalKey<NavigatorState>(debugLabel: 'feed');

final GlobalKey<NavigatorState> cartNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'cart');

final GlobalKey<NavigatorState> bottomNavigationKey =
    GlobalKey<NavigatorState>(debugLabel: 'bottom');
