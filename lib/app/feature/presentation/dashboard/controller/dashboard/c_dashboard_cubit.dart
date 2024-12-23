import 'package:bloc/bloc.dart';
import 'package:cashier_mini/app/entity/database_local/transaction/dl_transaction.dart';
import 'package:cashier_mini/app/feature/domain/transaction/usacase_gets_transaction.dart';
import 'package:cashier_mini/app/feature/presentation/dashboard/dashboard_route.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

part 'c_dashboard_state.dart';

class CDashboardCubit extends Cubit<CDashboardState> {
  CDashboardCubit() : super(const CDashboardState(index: 0));
  final RefreshController refreshController = RefreshController(initialRefresh: true);

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

  onGetData({bool isReset = false}) async {
    if (isReset) refreshController.resetNoData();
    final res = await UsecaseGetsTransaction.call(offset: isReset ? 0 : state.data.length);
    emit(state.copyWith(data: isReset ? res : [...state.data, ...res]));
    if (isReset) refreshController.refreshCompleted();
    if (!isReset) refreshController.loadComplete();
    if (!isReset && res.isEmpty) refreshController.loadNoData();
  }
}
