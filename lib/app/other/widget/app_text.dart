part of "widget_export.dart";

// variant style text
enum AppTextStlye {
  displayLarge,
  displayMedium,
  displaySmall,
  headlineLarge,
  headlineMedium,
  headlineSmall,
  titleLarge,
  titleMedium,
  titleSmall,
  labelLarge,
  labelMedium,
  labelSmall,
  bodyLarge,
  bodyMedium,
  bodySmall,
}

// widget ready use to ui
class AppText extends StatelessWidget {
  const AppText({
    super.key,
    required this.text,
    this.style = AppTextStlye.bodyMedium,
  });

  final String text;
  final AppTextStlye style;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme.apply(displayColor: Theme.of(context).colorScheme.onSurface);
    final style = switch (this.style) {
      AppTextStlye.displayLarge => textTheme.displayLarge,
      AppTextStlye.displayMedium => textTheme.displayMedium,
      AppTextStlye.displaySmall => textTheme.displaySmall,
      AppTextStlye.headlineLarge => textTheme.headlineLarge,
      AppTextStlye.headlineMedium => textTheme.headlineMedium,
      AppTextStlye.headlineSmall => textTheme.headlineSmall,
      AppTextStlye.titleLarge => textTheme.titleLarge,
      AppTextStlye.titleMedium => textTheme.titleMedium,
      AppTextStlye.titleSmall => textTheme.titleSmall,
      AppTextStlye.labelLarge => textTheme.labelLarge,
      AppTextStlye.labelMedium => textTheme.labelMedium,
      AppTextStlye.labelSmall => textTheme.labelSmall,
      AppTextStlye.bodyLarge => textTheme.bodyLarge,
      AppTextStlye.bodyMedium => textTheme.bodyMedium,
      AppTextStlye.bodySmall => textTheme.bodySmall,
    };

    return Text(text, style: style);
  }
}
