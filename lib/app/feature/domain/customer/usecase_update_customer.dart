import 'package:cashier_mini/app/entity/model/m_customer.dart';
import 'package:cashier_mini/app/feature/data/customer/local_customer.dart';

class UsecaseUpdateCustomer {
  static Future<MCustomer> call(MCustomer data) async {
    final res = await LocalCustomer.update(data: data.toDatabaleLocal());
    return res.toMCustomer();
  }
}
