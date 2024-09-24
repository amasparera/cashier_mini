// ignore_for_file: public_member_api_docs, sort_constructors_first

part of 'c_customer_list_cubit.dart';

class CCustomerListState extends Equatable {
  final List<MCustomer> data;
  const CCustomerListState({
    this.data = const [],
  });

  @override
  List<Object> get props => [data];

  CCustomerListState copyWith({
    List<MCustomer>? data,
  }) {
    return CCustomerListState(
      data: data ?? this.data,
    );
  }
}
