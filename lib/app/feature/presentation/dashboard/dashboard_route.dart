import 'package:cashier_mini/app/feature/presentation/dashboard/ui/dashboard/ui_dashboard.dart';
import 'package:cashier_mini/app/feature/presentation/dashboard/ui/dashboard_home/ui_dashboard_home.dart';
import 'package:cashier_mini/app/feature/presentation/dashboard/ui/dashboard_recap/ui_dashboard_recap.dart';
import 'package:cashier_mini/app/other/widget/widget_export.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DashboardRoute {
  static const String _base = '/dashboard';
  static String home = '$_base/home';
  static String statistics = '$_base/statistics';
  static String profile = '$_base/profile';

  static final _shellNavigatorKey = GlobalKey<NavigatorState>();

  static List<RouteBase> routers() => [
        ShellRoute(
            navigatorKey: _shellNavigatorKey,
            builder: (context, state, child) {
              return UIDashboard(child: child);
            },
            routes: [
              GoRoute(
                path: home,
                parentNavigatorKey: _shellNavigatorKey,
                builder: (context, state) {
                  return const UIDashboardHome();
                },
              ),
              GoRoute(
                path: statistics,
                parentNavigatorKey: _shellNavigatorKey,
                builder: (BuildContext context, GoRouterState state) {
                  return UIDashboardRecap();
                },
              ),
              GoRoute(
                path: profile,
                parentNavigatorKey: _shellNavigatorKey,
                builder: (BuildContext context, GoRouterState state) {
                  return const Center(
                    child: AppText(text: 'profile'),
                  );
                },
              ),
            ])
      ];

  static toDashboard(BuildContext context) async {
    return context.push(home);
  }
}
