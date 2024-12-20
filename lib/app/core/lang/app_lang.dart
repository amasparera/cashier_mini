// ignore_for_file: non_constant_identifier_names

import 'package:cashier_mini/app/feature/presentation/customer/customer_lang.dart';
import 'package:cashier_mini/app/feature/presentation/product/product_lang.dart';
import 'package:cashier_mini/app/feature/presentation/transaction/transaction_lang.dart';
import 'package:cashier_mini/app/other/exception/app_exception_key.dart';

mixin AppLang {
  static Map<String, dynamic> EN() => {}
    ..addAll(AppExceptionKey.messageEN)
    ..addAll(ProductLang.messageEN)
    ..addAll(CustomerLang.messageEN)
    ..addAll(TransactionLang.messageEN);
  static Map<String, dynamic> ID() => {}
    ..addAll(AppExceptionKey.messageID)
    ..addAll(ProductLang.messageID)
    ..addAll(TransactionLang.messageID)
    ..addAll(CustomerLang.messageID);
}
