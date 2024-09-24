import 'package:cashier_mini/app/core/database/app_database.dart';
import 'package:cashier_mini/app/core/injection/app_injection.dart';
import 'package:cashier_mini/app/main_app.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppDatabase.init();
  await AppDependencies().setupConfiguration();
  runApp(const MainApp());
}
