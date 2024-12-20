// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:isar/isar.dart';

part 'dl_transaction.g.dart';

@collection
class MTransaction {
  Id? id;
  double? amount;
  double? totalPrice;
  DateTime? date;
  DlTransactionCustomer? customer;
  List<DlTransactionData> data;

  MTransaction({
    this.id,
    this.amount,
    this.totalPrice,
    this.date,
     this.customer,
    required this.data,
  });
}

@embedded
class DlTransactionCustomer {
  String? idLocal;
  String? idServer;
  String? name;
  String? phone;
  String? addess;
  String? gender;

  DlTransactionCustomer({
    this.idServer,
    this.name,
    this.phone,
    this.addess,
    this.gender,
  });
}

@embedded
class DlTransactionData {
  String? idServer;
  String? name;
  String? barcode;
  int? price;
  int? fill;
  double? totalPrice;
  int? qty;
  String? unit;
  String? currency;

  DlTransactionData({
    this.idServer,
    this.name,
    this.barcode,
    this.price,
    this.fill,
    this.totalPrice,
    this.qty,
    this.unit,
    this.currency,
  });
}