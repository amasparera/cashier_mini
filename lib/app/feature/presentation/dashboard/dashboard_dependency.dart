import 'package:cashier_mini/app/other/interface/base_dependency.dart';

class DashboardDependencies extends BaseDependencies {
  DashboardDependencies(super.locator);

  @override
  Future<void> setupConfiguration() async {
    // locator.registerFactory(() => CChangeOutletCubit(locator()));
  }
}
