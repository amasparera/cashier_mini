import 'package:cashier_mini/app/other/widget/widget_export.dart';
import 'package:flutter/material.dart';

class AppCounter extends StatelessWidget {
  const AppCounter({super.key, required this.onChange, required this.count});
  final ValueChanged onChange;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        AppIconButton(
            onPressed: () {
              if (count > 0) onChange.call(count - 1);
            },
            icon: Icons.indeterminate_check_box_rounded),
        AppText(text: count.toString()),
        AppIconButton(
            onPressed: () {
              onChange.call(count + 1);
            },
            icon: Icons.add_box_rounded)
      ],
    );
  }
}
