import 'package:flutter/material.dart';

enum AppDividerType {
  line,
  hight,
  ;

  double get size => switch (this) {
        AppDividerType.hight => 20,
        AppDividerType.line => 2,
      };
}

class AppDivider extends StatelessWidget {
  const AppDivider({super.key, this.type = AppDividerType.line});
  final AppDividerType type;

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: type.size,
      thickness: type.size,
    );
  }
}
