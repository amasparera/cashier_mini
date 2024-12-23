// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cashier_mini/app/entity/database_local/income/dl_income.dart';
import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';

class MIncome extends Equatable {
  final Id id;
  final double totalIncome;
  final double totalOutcome;
  final double totalProfit;
  final DateTime dateCreated;
  const MIncome({
    required this.id,
    required this.totalIncome,
    required this.totalOutcome,
    required this.totalProfit,
    required this.dateCreated,
  });

  MIncome add({required double totalIncome, required double totalOutcome, required double totalProfit}) {
    return MIncome(
      id: id,
      totalIncome: this.totalIncome + totalIncome,
      totalOutcome: this.totalOutcome + totalOutcome,
      totalProfit: this.totalProfit + totalProfit,
      dateCreated: dateCreated,
    );
  }

  MIncome copyWith({
  
    double? totalIncome,
    double? totalOutcome,
    double? totalProfit,
    DateTime? dateCreated,
  }) {
    return MIncome(
      id: id ,
      totalIncome: totalIncome ?? this.totalIncome,
      totalOutcome: totalOutcome ?? this.totalOutcome,
      totalProfit: totalProfit ?? this.totalProfit,
      dateCreated: dateCreated ?? this.dateCreated,
    );
  }

  @override
  List<Object> get props {
    return [
      id,
      totalIncome,
      totalOutcome,
      totalProfit,
      dateCreated,
    ];
  }

  DlIncome toDlIncome() {
    return DlIncome(  
      id: id,
      totalIncome: totalIncome,
      totalOutcome: totalOutcome,
      totalProfit: totalProfit,
      dateCreated: dateCreated.copyWith(hour: 0, minute: 0, second: 0, millisecond: 0),
    );
  }
}
