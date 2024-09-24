// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:isar/isar.dart';

import 'package:cashier_mini/app/entity/enums/app_currency.dart';
import 'package:cashier_mini/app/entity/enums/product_unit.dart';
import 'package:cashier_mini/app/entity/model/m_product.dart';

part 'dl_product.g.dart';

@collection
class DlProduct {
  Id? id;
  String? idServer;
  String name;
  String? barcode;
  int price;
  int fill;

  @enumerated
  ProductUnit unit;
  @enumerated
  AppCurrency currency;

  DlProduct({
    this.id,
    this.idServer,
    required this.name,
    required this.barcode,
    required this.price,
    required this.fill,
    required this.unit,
    required this.currency,
  });

  MProduct toMProduct() {
    return MProduct(
      idLocal: id,
      idServer: idServer,
      name: name,
      barcode: barcode,
      price: price,
      fill: fill,
      unit: unit,
      currency: currency,
    );
  }
}
