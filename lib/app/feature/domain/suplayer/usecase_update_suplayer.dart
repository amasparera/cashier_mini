import 'package:cashier_mini/app/entity/model/m_suplayer.dart';
import 'package:cashier_mini/app/feature/data/suplayer/local_suplayer.dart';

class UsecaseUpdateSuplayer {
  static Future<MSuplayer> call(MSuplayer data) async {
    final res = await LocalSuplayer.update(data: data.toDatabaleLocal());
    return res.toMSuplayer();
  }
}
