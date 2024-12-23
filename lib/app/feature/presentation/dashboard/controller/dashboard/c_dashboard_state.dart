part of 'c_dashboard_cubit.dart';

class CDashboardState extends Equatable {
  final int index;
  final List<DlTransaction> data;
  const CDashboardState({
    required this.index,
    this.data = const [],
  });

  @override
  List<Object> get props => [index, data];

  CDashboardState copyWith({
    int? index,
    List<DlTransaction>? data,
  }) {
    return CDashboardState(
      index: index ?? this.index,
      data: data ?? this.data,
    );
  }
}
