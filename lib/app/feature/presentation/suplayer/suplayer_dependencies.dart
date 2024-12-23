import 'package:cashier_mini/app/feature/presentation/product/controller/c_product_add/c_product_add_cubit.dart';
import 'package:cashier_mini/app/feature/presentation/product/controller/c_product_list/c_product_list_cubit.dart';
import 'package:cashier_mini/app/other/interface/base_dependency.dart';

class SuplayerDependencies extends BaseDependencies {
  SuplayerDependencies(super.locator);

  @override
  Future<void> setupConfiguration() async {
    locator.registerFactory(() => CProductListCubit());
    locator.registerFactory(() => CProductAddCubit());
  }
}
