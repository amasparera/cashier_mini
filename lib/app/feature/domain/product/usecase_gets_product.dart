import 'package:cashier_mini/app/entity/model/m_product.dart';
import 'package:cashier_mini/app/feature/data/product/local_product.dart';

class UsecaseGetsProduct {
  static Future<List<MProduct>> call({int offset = 0}) async {
    final res = await LocalProduct.gets(offset: offset, limit: 10);
    return res.map((element) => element.toMProduct()).toList();
  }
}
