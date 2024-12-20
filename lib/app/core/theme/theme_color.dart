import 'package:flutter/material.dart';

enum AppSelectColor {
  baseColor('M3 Baseline', Color(0xff6750a4)),
  indigo('Indigo', Colors.indigo),
  blue('Blue', Colors.blue),
  teal('Teal', Colors.teal),
  green('Green', Colors.green),
  yellow('Yellow', Colors.yellow),
  orange('Orange', Colors.orange),
  deepOrange('Deep Orange', Colors.deepOrange),
  pink('Pink', Colors.pink);

  const AppSelectColor(this.label, this.color);
  final String label;
  final Color color;
}

enum AppColor {
  primary,
  onPrimary,
  primaryContainer,
  onPrimaryContainer,
  secondary,
  onSecondary,
  secondaryContainer,
  onSecondaryContainer,
  tertiary,
  onTertiary,
  tertiaryContainer,
  onTertiaryContainer,
  error,
  onError,
  errorContainer,
  onErrorContainer,
  surface,
  onSurface,
  surfaceVariant,
  onSurfaceVariant,
  surfaceTint,
  outline,
  outlineVariant,
  inverseSurface,
  onInverseSurface,
  inversePrimary,
  background,
  onBackground,
  scrim,
  shadow,
  ;

  Color color(BuildContext context) {
    Color selectedColor = Theme.of(context).primaryColor;
    ThemeData theme = ThemeData(
      colorSchemeSeed: selectedColor,
    );

    return switch (this) {
      AppColor.primary => theme.colorScheme.primary,
      AppColor.onPrimary => theme.colorScheme.onPrimary,
      AppColor.primaryContainer => theme.colorScheme.primaryContainer,
      AppColor.onPrimaryContainer => theme.colorScheme.onPrimaryContainer,
      AppColor.secondary => theme.colorScheme.secondary,
      AppColor.onSecondary => theme.colorScheme.onSecondary,
      AppColor.secondaryContainer => theme.colorScheme.secondaryContainer,
      AppColor.onSecondaryContainer => theme.colorScheme.onSecondaryContainer,
      AppColor.tertiary => theme.colorScheme.tertiary,
      AppColor.onTertiary => theme.colorScheme.onTertiary,
      AppColor.tertiaryContainer => theme.colorScheme.tertiaryContainer,
      AppColor.onTertiaryContainer => theme.colorScheme.onTertiaryContainer,
      AppColor.error => theme.colorScheme.error,
      AppColor.onError => theme.colorScheme.onError,
      AppColor.errorContainer => theme.colorScheme.errorContainer,
      AppColor.onErrorContainer => theme.colorScheme.onErrorContainer,
      AppColor.surface => theme.colorScheme.surface,
      AppColor.onSurface => theme.colorScheme.onSurface,
      AppColor.surfaceVariant => theme.colorScheme.surfaceContainerHighest,
      AppColor.onSurfaceVariant => theme.colorScheme.onSurfaceVariant,
      AppColor.surfaceTint => theme.colorScheme.surfaceTint,
      AppColor.outline => theme.colorScheme.outline,
      AppColor.outlineVariant => theme.colorScheme.outlineVariant,
      AppColor.inverseSurface => theme.colorScheme.inverseSurface,
      AppColor.onInverseSurface => theme.colorScheme.onInverseSurface,
      AppColor.inversePrimary => theme.colorScheme.inversePrimary,
      AppColor.background => theme.colorScheme.surface,
      AppColor.onBackground => theme.colorScheme.onSurface,
      AppColor.scrim => theme.colorScheme.scrim,
      AppColor.shadow => theme.colorScheme.shadow,
    };
  }
}
