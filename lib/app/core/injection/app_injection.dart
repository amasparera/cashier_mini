import 'package:cashier_mini/app/other/api/app_api.dart';
import 'package:cashier_mini/app/other/interface/base_api.dart';
import 'package:cashier_mini/app/other/interface/base_dependency.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

class AppDependencies extends BaseDependencies {
  AppDependencies() : super(locator);

  @override
  Future<void> setupConfiguration() async {
    locator.registerLazySingleton<BaseApi>(() => AppApi());

    // // setup database
    // locator.registerLazySingleton<BaseDatabase>(() => BaseDatabaseImpl());

    // // setup api
    // locator.registerLazySingleton<BaseApi>(() => ApiImpl());

    // await RepositoriesDependencies(locator).setupConfiguration();

    // await AuthDependencies(locator).setupConfiguration();
  }
}
