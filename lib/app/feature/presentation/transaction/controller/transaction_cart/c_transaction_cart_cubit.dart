import 'package:bloc/bloc.dart';
import 'package:cashier_mini/app/entity/model/m_product.dart';
import 'package:equatable/equatable.dart';

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
  }
}
