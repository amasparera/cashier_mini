import 'package:cashier_mini/app/entity/model/m_income.dart';
import 'package:cashier_mini/app/other/extention/extention_export.dart';
import 'package:isar/isar.dart';

part 'dl_income.g.dart';

@collection
class DlIncome {
  Id? id;
  double? totalIncome;
  double? totalOutcome;
  double? totalProfit;
  DateTime? dateCreated;
  String? idDay;

  DlIncome({
    this.id,
    this.totalIncome,
    this.totalOutcome,
    this.totalProfit,
    this.dateCreated,
    this.idDay,
  });

  setId(){
    idDay = idDay ?? dateCreated!.formatId();
  }

  MIncome toMIncome() {
    return MIncome(
      id: id!,
      totalIncome: totalIncome!,
      totalOutcome: totalOutcome!,
      totalProfit: totalProfit!,
      dateCreated: dateCreated!,
    );
  }
}
