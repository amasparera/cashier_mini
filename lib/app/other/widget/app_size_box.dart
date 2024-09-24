part of 'widget_export.dart';

class AppSizeBox extends StatelessWidget {
  const AppSizeBox({super.key, this.size = 1});

  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size * context.appSize,
      width: size * context.appSize,
    );
  }
}
