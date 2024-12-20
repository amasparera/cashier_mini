import 'package:cashier_mini/app/core/database/app_database.dart';
import 'package:cashier_mini/app/core/injection/app_injection.dart';
import 'package:cashier_mini/app/main_app.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localization/flutter_localization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppDatabase.init();
  await AppDependencies().setupConfiguration();
  await FlutterLocalization.instance.ensureInitialized();
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
  runApp(const MainApp());
}
