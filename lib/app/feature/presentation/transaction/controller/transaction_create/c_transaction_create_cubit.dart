import 'package:bloc/bloc.dart';
import 'package:cashier_mini/app/entity/model/m_product.dart';
import 'package:cashier_mini/app/feature/domain/product/usecase_gets_product.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

part 'c_transaction_create_state.dart';

class CTransactionCreateCubit extends Cubit<CTransactionCreateState> {
  CTransactionCreateCubit() : super(const CTransactionCreateState());

  RefreshController refreshController = RefreshController(initialRefresh: true);

  init() {
    emit(state.copyWith(order: {}));
  }

  onAddCart(BuildContext context, int index, int count) {
    Map<MProduct, int> data = Map.from(state.order);
    data[state.data[index]] = count;
    emit(state.copyWith(order: data));
  }

  onGetData({bool isReset = false}) async {
    if (isReset) refreshController.resetNoData();
    final res = await UsecaseGetsProduct.call(offset: isReset ? 0 : state.data.length);
    emit(state.copyWith(data: isReset ? res : [...state.data, ...res]));
    if (isReset) refreshController.refreshCompleted();
    if (!isReset) refreshController.loadComplete();
    if (!isReset && res.isEmpty) refreshController.loadNoData();
  }
}
