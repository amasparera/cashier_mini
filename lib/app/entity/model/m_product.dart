// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:cashier_mini/app/entity/database_local/product/dl_product.dart';
import 'package:cashier_mini/app/entity/enums/app_currency.dart';
import 'package:cashier_mini/app/entity/enums/product_unit.dart';

class MProduct extends Equatable {
  final int? idLocal;
  final String? idServer;
  final String name;
  final String? barcode;
  final int price;
  final int fill;
  final ProductUnit unit;

  final AppCurrency currency;

  const MProduct({
    this.idLocal,
    this.idServer,
    required this.name,
    required this.barcode,
    required this.price,
    required this.fill,
    required this.unit,
    required this.currency,
  });

  @override
  List<Object?> get props {
    return [
      idLocal,
      idServer,
      name,
      barcode,
      price,
      fill,
      unit,
      currency,
    ];
  }

  MProduct copyWith({
    int? idLocal,
    String? idServer,
    String? name,
    String? barcode,
    int? price,
    int? fill,
    ProductUnit? unit,
    AppCurrency? currency,
  }) {
    return MProduct(
      idLocal: idLocal ?? this.idLocal,
      idServer: idServer ?? this.idServer,
      name: name ?? this.name,
      barcode: barcode ?? this.barcode,
      price: price ?? this.price,
      fill: fill ?? this.fill,
      unit: unit ?? this.unit,
      currency: currency ?? this.currency,
    );
  }

  DlProduct toDatabaleLocal() {
    return DlProduct(
      id: idLocal,
      idServer: idServer,
      barcode: barcode,
      currency: currency,
      name: name,
      price: price,
      unit: unit,
      fill: fill,
    );
  }
}
