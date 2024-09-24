import 'package:cashier_mini/app/entity/model/m_product.dart';
import 'package:cashier_mini/app/feature/data/product/local_product.dart';

class UsecaseUpdateProduct {
  static Future<MProduct> call(MProduct data) async {
    final res = await LocalProduct.update(data: data.toDatabaleLocal());
    return res.toMProduct();
  }
}
