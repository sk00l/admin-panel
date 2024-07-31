import 'package:admin_pannel/presentation/home/home_screen.dart';
import 'package:admin_pannel/presentation/home/widgets/navigation_rail_widget.dart';
import 'package:admin_pannel/presentation/settings/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static final GoRouter router = GoRouter(
    initialLocation: "/",
    navigatorKey: navigatorKey,
    routes: [
      ShellRoute(
        navigatorKey: GlobalKey<NavigatorState>(),
        builder: (context, state, child) {
          return Scaffold(
            body: Row(
              children: [
                const NavigationRailWidget(),
                Expanded(child: child),
              ],
            ),
          );
        },
        routes: [
          GoRoute(
            path: '/',
            builder: (context, state) => const HomeScreen(),
          ),
          GoRoute(
            path: '/settings',
            builder: (context, state) => const SettingsScreen(),
          ),
        ],
      ),
    ],
  );
}
