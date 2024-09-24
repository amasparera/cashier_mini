import 'package:get_it/get_it.dart';

abstract class BaseDependencies {
  final GetIt locator;

  BaseDependencies(this.locator);

  Future<void> setupConfiguration();
}
