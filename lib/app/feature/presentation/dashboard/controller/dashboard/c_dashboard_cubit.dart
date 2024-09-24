import 'package:bloc/bloc.dart';
import 'package:cashier_mini/app/feature/presentation/dashboard/dashboard_route.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'c_dashboard_state.dart';

class CDashboardCubit extends Cubit<CDashboardState> {
  CDashboardCubit() : super(const CDashboardState(index: 0));

  onSelectIndex(BuildContext context, int index) {
    emit(state.copyWith(index: index));
    switch (index) {
      case 0:
        context.go(DashboardRoute.home);
        break;
      case 1:
        context.go(DashboardRoute.statistics);
        break;
      case 2:
        context.go(DashboardRoute.profile);
        break;
      default:
        context.go(DashboardRoute.home);
        break;
    }
  }
}
