import 'package:cashier_mini/app/core/lang/app_lang.dart';
import 'package:cashier_mini/app/core/routes/routes.dart';
import 'package:cashier_mini/app/core/theme/theme_color.dart';
import 'package:cashier_mini/app/feature/presentation/customer/customer_provider.dart';
import 'package:cashier_mini/app/feature/presentation/dashboard/dashboard_provider.dart';
import 'package:cashier_mini/app/feature/presentation/product/product_provider.dart';
import 'package:cashier_mini/app/feature/presentation/transaction/transaction_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:google_fonts/google_fonts.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  ThemeMode themeMode = ThemeMode.system;
  AppSelectColor colorSelected = AppSelectColor.pink;

  ColorScheme? imageColorScheme = const ColorScheme.light();

  bool get useLightMode => switch (themeMode) {
        ThemeMode.system => View.of(context).platformDispatcher.platformBrightness == Brightness.light,
        ThemeMode.light => true,
        ThemeMode.dark => false
      };

  final FlutterLocalization localization = FlutterLocalization.instance;

  @override
  void initState() {
    localization.init(
      mapLocales: [
        MapLocale('en', AppLang.EN(), fontFamily: GoogleFonts.roboto().fontFamily),
        MapLocale('id', AppLang.ID(), fontFamily: GoogleFonts.roboto().fontFamily),
      ],
      initLanguageCode: 'id',
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        ...ProductProvider.providers(context),
        ...CustomerProvider.providers(context),
        ...DashboardProvider.providers(context),
        ...TransactionProvider.providers(context)
      ],
      child: MaterialApp.router(
        routerConfig: AppRoute.configuration,
        debugShowCheckedModeBanner: false,
        title: 'Cashier Mini',
        themeMode: themeMode,
        supportedLocales: localization.supportedLocales,
        localizationsDelegates: localization.localizationsDelegates,
        theme: ThemeData(
          fontFamily: localization.fontFamily,
          colorSchemeSeed: colorSelected.color,
          useMaterial3: true,
          brightness: Brightness.light,
        ),
        darkTheme: ThemeData(
          fontFamily: localization.fontFamily,
          colorSchemeSeed: colorSelected.color,
          useMaterial3: true,
          brightness: Brightness.dark,
        ),
      ),
    );
  }
}
