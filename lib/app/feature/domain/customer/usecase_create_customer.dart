import 'package:cashier_mini/app/entity/model/m_customer.dart';
import 'package:cashier_mini/app/feature/data/customer/local_customer.dart';

class UsecaseCreateCustomer {
  static Future<MCustomer> call(MCustomer data) async {
    final res = await LocalCustomer.add(data: data.toDatabaleLocal());
    return res.toMCustomer();
  }
}
