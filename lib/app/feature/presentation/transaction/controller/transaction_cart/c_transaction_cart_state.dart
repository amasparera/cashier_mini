// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'c_transaction_cart_cubit.dart';

class CTransactionCartState extends Equatable {
  final Map<MProduct, int> order;
  final bool isLoading;
  final MCustomer? customer;
  final MIncome? income;
  const CTransactionCartState({
    this.order = const {},
    this.isLoading = false,
    this.customer,
    this.income,
  });

  @override
  List<Object?> get props => [order, isLoading, customer,income];

  CTransactionCartState copyWith({
    Map<MProduct, int>? order,
    bool? isLoading,
    MCustomer? customer,
    MIncome? income,
  }) {
    return CTransactionCartState(
      income: income ?? this.income,
      order: order ?? this.order,
      isLoading: isLoading ?? this.isLoading,
      customer: customer ?? this.customer,
    );
  }

  double get totalPriceOrder => order.entries.fold(0, (preview, value) => preview + (value.value * value.key.price));
}
