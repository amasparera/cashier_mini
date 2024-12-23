// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cashier_mini/app/entity/enums/app_currency.dart';
import 'package:cashier_mini/app/entity/enums/product_unit.dart';
import 'package:cashier_mini/app/entity/model/m_product.dart';

class MTransactionData extends MProduct {
  final double totalPrice;
  final int qty;
  const MTransactionData(
      {required this.totalPrice,
      required this.qty,
      super.idLocal,
      super.idServer,
      required super.name,
      required super.barcode,
      required super.price,
      required super.fill,
      required super.unit,
      required super.currency});

  @override
  MTransactionData copyWith({
    int? idLocal,
    String? idServer,
    String? name,
    String? barcode,
    double? price,
    int? fill,
    double? totalPrice,
    int? qty,
    ProductUnit? unit,
    AppCurrency? currency,
  }) {
    return MTransactionData(
        idLocal: idLocal ?? this.idLocal,
        idServer: idServer ?? this.idServer,
        name: name ?? this.name,
        barcode: barcode ?? this.barcode,
        price: price ?? this.price,
        fill: fill ?? this.fill,
        unit: unit ?? this.unit,
        currency: currency ?? this.currency,
        totalPrice: totalPrice ?? this.totalPrice,
        qty: qty ?? this.qty);
  }
}
