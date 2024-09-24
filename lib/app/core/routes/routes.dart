import 'package:cashier_mini/app/feature/presentation/customer/customer_route.dart';
import 'package:cashier_mini/app/feature/presentation/dashboard/dashboard_route.dart';
import 'package:cashier_mini/app/feature/presentation/product/product_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRoute {
  static GoRouter configuration = GoRouter(
    errorBuilder: (context, state) => const SizedBox(),
    initialLocation: DashboardRoute.home,
    routes: routers(),
    debugLogDiagnostics: true,
  );

  static List<RouteBase> routers() {
    return [
      ...DashboardRoute.routers(),
      ...ProductRoute.routers(),
      ...CustomerRoute.routers(),
    ];
  }
}
