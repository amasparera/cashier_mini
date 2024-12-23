import 'package:cashier_mini/app/entity/model/m_suplayer.dart';
import 'package:cashier_mini/app/feature/data/suplayer/local_suplayer.dart';

class UsecaseGetSuplayer {
  static Future<MSuplayer> call(int id) async {
    final res = await LocalSuplayer.get(id: id);
    return res.toMSuplayer();
  }
}
