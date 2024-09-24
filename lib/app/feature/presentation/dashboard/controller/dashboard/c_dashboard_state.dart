// ignore_for_file: public_member_api_docs, sort_constructors_first

part of 'c_dashboard_cubit.dart';

class CDashboardState extends Equatable {
  final int index;
  const CDashboardState({
    required this.index,
  });

  @override
  List<Object> get props => [index];

  CDashboardState copyWith({
    int? index,
  }) {
    return CDashboardState(
      index: index ?? this.index,
    );
  }
}
