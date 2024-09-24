import 'package:cashier_mini/app/feature/presentation/dashboard/controller/dashboard/c_dashboard_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardProvider {
  static List<BlocProvider> providers(BuildContext context) => [
        BlocProvider<CDashboardCubit>(
          create: (context) => CDashboardCubit(),
        ),
      ];
}
