// ignore_for_file: constant_identifier_names

enum ProductUnit {
  Pcs('Pcs'),
  Liter('Liter'),
  Meter('Meter'),
  Gram('Gram'),
  ;

  const ProductUnit(this.title);

  final String title;
}
