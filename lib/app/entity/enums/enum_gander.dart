enum EnumGender {
  lakiLaki(title: 'Laki-laki', value: 'L'),
  perempuan(title: 'Perempuan', value: 'P'),
  ;

  final String title;
  final String value;

  const EnumGender({required this.title,required this.value});

  static EnumGender fromString(String value) => EnumGender.values.firstWhere((e) => e.value == value);
}
