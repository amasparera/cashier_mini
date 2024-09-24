part of 'widget_export.dart';

// variant level elevation tint and shadow in card
enum AppCardLevel {
  nol(elevation: 0, overlayPercent: 0),
  one(elevation: 1, overlayPercent: 5),
  two(elevation: 3, overlayPercent: 8),
  three(elevation: 6, overlayPercent: 11),
  four(elevation: 8, overlayPercent: 12),
  five(elevation: 12, overlayPercent: 14),
  ;

  const AppCardLevel({required this.elevation, required this.overlayPercent});

  final double elevation;
  final int overlayPercent;
}

// variant type card
enum AppCardType {
  surfaceTint,
  surfaceTintShadow,
  shadowColor;

  const AppCardType();

  Color? getShadowColor(BuildContext context) {
    if (this == AppCardType.shadowColor || this == AppCardType.surfaceTintShadow) {
      return Theme.of(context).colorScheme.shadow;
    }
    return null;
  }

  Color? getSurfaceTint(BuildContext context) {
    if (this == AppCardType.surfaceTint || this == AppCardType.surfaceTintShadow) {
      return Theme.of(context).colorScheme.primary;
    }
    return null;
  }
}

// widget card ready use ui
class AppCard extends StatelessWidget {
  const AppCard({
    super.key,
    this.borderRadius,
    required this.child,
    this.level = AppCardLevel.one,
    this.inPadding = EdgeInsets.zero,
    this.outPadding = EdgeInsets.zero,
    this.type = AppCardType.surfaceTint,
    this.shadowColor,
    this.onTap,
  });

  final BorderRadiusGeometry? borderRadius;
  final Widget child;
  final AppCardLevel level;
  final EdgeInsetsGeometry inPadding, outPadding;
  final AppCardType type;
  final Color? shadowColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: outPadding,
      child: Material(
        borderRadius: borderRadius,
        elevation: level.elevation,
        color: Theme.of(context).colorScheme.surface,
        shadowColor: type.getShadowColor(context),
        surfaceTintColor: type.getSurfaceTint(context),
        clipBehavior: Clip.hardEdge,
        type: MaterialType.card,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: inPadding,
            child: child,
          ),
        ),
      ),
    );
  }
}
