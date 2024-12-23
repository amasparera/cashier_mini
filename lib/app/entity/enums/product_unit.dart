// ignore_for_file: constant_identifier_names

enum ProductUnit {
  Pcs('Pcs','pcs'),
  Liter('Liter','liter'),
  Meter('Meter','meter'),
  Gram('Gram','gram'),
  ;

  const ProductUnit(this.title,this.value);

  final String value;
  final String title;

  static ProductUnit fromString(String value) => ProductUnit.values.firstWhere((e) => e.value == value);
}
