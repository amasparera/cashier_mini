part of "widget_export.dart";

enum AppFloatingButtonType {
  small,
  extended,
  normal,
  large,
}

class AppFloatingButton extends StatelessWidget {
  const AppFloatingButton({
    super.key,
    this.type = AppFloatingButtonType.normal,
    required this.onPressed,
    this.tooltip,
    this.label,
    this.icon,
  });

  final AppFloatingButtonType type;
  final VoidCallback onPressed;
  final String? tooltip;
  final IconData? icon;

  /// this [label] only use if [type] == AppFloatingButtonType.extended
  final String? label;

  @override
  Widget build(BuildContext context) {
    final icon = this.icon ?? Icons.add;
    return switch (type) {
      AppFloatingButtonType.small => FloatingActionButton.small(
          onPressed: onPressed,
          tooltip: tooltip,
          child: Icon(icon),
        ),
      AppFloatingButtonType.extended => FloatingActionButton.extended(
          onPressed: onPressed,
          tooltip: tooltip,
          icon: Icon(icon),
          label: Text(label ?? 'label'),
        ),
      AppFloatingButtonType.normal => FloatingActionButton(
          onPressed: onPressed,
          tooltip: tooltip,
          child: Icon(icon),
        ),
      AppFloatingButtonType.large => FloatingActionButton.large(
          onPressed: onPressed,
          tooltip: tooltip,
          child: Icon(icon),
        ),
    };
  }
}
