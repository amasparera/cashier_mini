import 'package:cashier_mini/app/entity/model/m_customer.dart';
import 'package:cashier_mini/app/feature/data/customer/local_customer.dart';

class UsecaseGetCustomer {
  static Future<MCustomer> call(int id) async {
    final res = await LocalCustomer.get(id: id);
    return res.toMCustomer();
  }
}
