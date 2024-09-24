// ignore_for_file: file_names

import 'package:cashier_mini/app/entity/model/m_customer.dart';
import 'package:cashier_mini/app/feature/data/customer/local_customer.dart';

class UsecaseGetsCustomer {
  static Future<List<MCustomer>> call({int offset = 0}) async {
    final res = await LocalCustomer.gets(offset: offset, limit: 10);
    return res.map((element) => element.toMCustomer()).toList();
  }
}
