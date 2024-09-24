enum AppCurrency {
  idr,
  dolar,
  ;

  const AppCurrency();

  String get symbol => switch (this) {
        AppCurrency.idr => 'Rp',
        AppCurrency.dolar => '\$',
      };
}
