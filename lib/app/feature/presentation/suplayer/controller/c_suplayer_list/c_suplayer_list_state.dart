// ignore_for_file: public_member_api_docs, sort_constructors_first

part of 'c_suplayer_list_cubit.dart';

class CSuplayerListState extends Equatable {
  final List<MSuplayer> data;
  const CSuplayerListState({
    this.data = const [],
  });

  @override
  List<Object> get props => [data];

  CSuplayerListState copyWith({
    List<MSuplayer>? data,
  }) {
    return CSuplayerListState(
      data: data ?? this.data,
    );
  }
}
