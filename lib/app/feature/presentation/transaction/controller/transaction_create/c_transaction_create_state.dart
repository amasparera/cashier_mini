// ignore_for_file: public_member_api_docs, sort_constructors_first

part of 'c_transaction_create_cubit.dart';

class CTransactionCreateState extends Equatable {
  final List<MProduct> data;
  final Map<MProduct, int> order;
  const CTransactionCreateState({
    this.data = const [],
    this.order = const {},
  });

  @override
  List<Object> get props => [data, order];

  CTransactionCreateState copyWith({
    List<MProduct>? data,
    Map<MProduct, int>? order,
  }) {
    return CTransactionCreateState(
      data: data ?? this.data,
      order: order ?? this.order,
    );
  }
}
