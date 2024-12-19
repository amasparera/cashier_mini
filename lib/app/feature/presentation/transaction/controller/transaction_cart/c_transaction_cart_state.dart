// ignore_for_file: public_member_api_docs, sort_constructors_first

part of 'c_transaction_cart_cubit.dart';

class CTransactionCartState extends Equatable {
  final Map<MProduct, int> order;
  const CTransactionCartState({
    this.order = const {},
  });

  @override
  List<Object> get props => [order];

  CTransactionCartState copyWith({
    Map<MProduct, int>? order,
  }) {
    return CTransactionCartState(
      order: order ?? this.order,
    );
  }

  int get totalPriceOrder => order.entries.fold(0, (preview, value) => preview + (value.value * value.key.price));
}
