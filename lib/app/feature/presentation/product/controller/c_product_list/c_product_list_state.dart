// ignore_for_file: public_member_api_docs, sort_constructors_first

part of 'c_product_list_cubit.dart';

class CProductListState extends Equatable {
  final List<MProduct> data;
  const CProductListState({
    this.data = const [],
  });

  @override
  List<Object> get props => [data];

  CProductListState copyWith({
    List<MProduct>? data,
  }) {
    return CProductListState(
      data: data ?? this.data,
    );
  }
}
