enum AppCurrency {
  idr("IDR"),
  dolar("USD"),
  ;

  const AppCurrency(this.value);
  final String value;

  static AppCurrency fromString(String value) => AppCurrency.values.firstWhere((e) => e.value == value);
  

  String get symbol => switch (this) {
        AppCurrency.idr => 'Rp',
        AppCurrency.dolar => '\$',
      };
}
