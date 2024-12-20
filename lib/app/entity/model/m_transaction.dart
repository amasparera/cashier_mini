// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:cashier_mini/app/entity/model/m_customer.dart';
import 'package:cashier_mini/app/entity/model/m_transaction_data.dart';

class MTransaction extends Equatable {
 final int id;
  final double amount;
  final double totalPrice;
  final DateTime date;
  final MCustomer customer;
  final List<MTransactionData> data;
  
  const MTransaction({
    required this.id,
    required this.amount,
    required this.totalPrice,
    required this.date,
    required this.customer,
    required this.data,
  });
 

  @override
  List<Object> get props {
    return [
      id,
      amount,
      date,
      customer,
      data,
      totalPrice
    ];
  }

  MTransaction copyWith({
    int? id,
    double? amount,
    double? totalPrice,
    DateTime? date,
    MCustomer? customer,
    List<MTransactionData>? data,
  }) {
    return MTransaction(
      id: id ?? this.id,
      amount: amount ?? this.amount,
      totalPrice: totalPrice ?? this.totalPrice,
      date: date ?? this.date,
      customer: customer ?? this.customer,
      data: data ?? this.data,
    );
  }
}
