import 'package:bloc/bloc.dart';
import 'package:cashier_mini/app/entity/model/m_suplayer.dart';
import 'package:cashier_mini/app/feature/domain/suplayer/usecase_gets_suplayer.dart';
import 'package:cashier_mini/app/feature/presentation/suplayer/suplayer_route.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

part 'c_suplayer_list_state.dart';

class CSuplayerListCubit extends Cubit<CSuplayerListState> {
  CSuplayerListCubit() : super(const CSuplayerListState()) {
    // if (state.data.isEmpty) refreshController.requestRefresh();
  }

  RefreshController refreshController = RefreshController(initialRefresh: true);

  onAddSuplayer(BuildContext context) {
    SuplayerRoute.toAdd(context, (value) {
      emit(state.copyWith(data: [value, ...state.data]));
    });
  }

  onAddDetail(BuildContext context, int index) {
    SuplayerRoute.toDetail(context, state.data[index], (value) {
      emit(state.copyWith(
          // [value] null is a delete , if not null is a update data
          data: (List.from(state.data)..[index] = value)));
    }, (value) {
      emit(state.copyWith(
          // [value] null is a delete , if not null is a update data
          data: List.from(state.data)..removeAt(index)));
    });
  }

  onGetData({bool isReset = false}) async {
    if (isReset) refreshController.resetNoData();
    final res = await UsecaseGetsSuplayer.call(offset: isReset ? 0 : state.data.length);
    emit(state.copyWith(data: isReset ? res : [...state.data, ...res]));

    if (isReset) refreshController.refreshCompleted();
    if (!isReset) refreshController.loadComplete();
    if (!isReset && res.isEmpty) refreshController.loadNoData();
  }
}
