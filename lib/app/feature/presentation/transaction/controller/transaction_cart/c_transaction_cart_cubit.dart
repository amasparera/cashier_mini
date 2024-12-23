import 'package:bloc/bloc.dart';
import 'package:cashier_mini/app/entity/model/m_customer.dart';
import 'package:cashier_mini/app/entity/model/m_income.dart';
import 'package:cashier_mini/app/entity/model/m_product.dart';
import 'package:cashier_mini/app/feature/domain/income/usecase_get_income.dart';
import 'package:cashier_mini/app/feature/domain/income/usecase_update_income.dart';
import 'package:cashier_mini/app/feature/domain/transaction/usecase_create_transaction.dart';
import 'package:cashier_mini/app/feature/presentation/customer/customer_route.dart';
import 'package:cashier_mini/app/other/extention/extention_export.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'c_transaction_cart_state.dart';

class CTransactionCartArgs {
  final Map<MProduct, int> order;

  CTransactionCartArgs({
    required this.order,
  });
}

class CTransactionCartCubit extends Cubit<CTransactionCartState> {
  CTransactionCartCubit() : super(const CTransactionCartState());

  ini(CTransactionCartArgs args) {
    emit(state.copyWith(order: args.order));
    UsecaseGetIncome.call().then((value) {
      emit(state.copyWith(income: value));
    });
  }

  onSelectCustomer(BuildContext context) async {
    await CustomerRoute.toList(
      context,
      onSelect: (value) {
        emit(state.copyWith(customer: value));
      },
    );
  }

  createTransaction(BuildContext context) async {
    try {
      emit(state.copyWith(isLoading: true));
      await UsecaseCreateTransaction.call(data: state.order, customer: state.customer);
      final totalProfit =
          state.order.entries.fold<double>(0, (previousValue, element) => previousValue + (element.key.price * element.value));
      await UsecaseUpdateIncome.call(state.income!.add(totalIncome: totalProfit, totalOutcome: 0, totalProfit: totalProfit));
      emit(state.copyWith(isLoading: false));
      if (context.mounted) GoRouter.of(context).popUntilPath("/dashboard");
    } catch (e) {
      emit(state.copyWith(isLoading: false));
    }
  }
}
