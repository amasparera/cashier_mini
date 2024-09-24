part of "widget_export.dart";

enum AppIconButtonState {
  active,
  select,
  disable,
  loading,
  ;

  bool get isSelected => this == AppIconButtonState.select;
}

enum AppIconButtonType {
  normal,
  filled,
  filledTonal,
  outlined,
}

class AppIconButton extends StatelessWidget {
  const AppIconButton({
    super.key,
    this.type = AppIconButtonType.normal,
    this.state = AppIconButtonState.active,
    required this.onPressed,
    required this.icon,
    this.selectedIcon,
  });

  final AppIconButtonType type;
  final AppIconButtonState state;
  final VoidCallback onPressed;
  final IconData icon;
  final IconData? selectedIcon;

  @override
  Widget build(BuildContext context) {
    VoidCallback? onPressed = switch (state) {
      AppIconButtonState.active => this.onPressed,
      AppIconButtonState.disable => null,
      AppIconButtonState.loading => () {},
      AppIconButtonState.select => this.onPressed,
    };

    return switch (type) {
      AppIconButtonType.normal => IconButton(
          isSelected: state.isSelected,
          icon: Icon(icon),
          selectedIcon: Icon(selectedIcon ?? icon),
          onPressed: onPressed,
        ),
      AppIconButtonType.filled => IconButton.filled(
          isSelected: state.isSelected,
          icon: Icon(icon),
          selectedIcon: Icon(selectedIcon ?? icon),
          onPressed: onPressed,
        ),
      AppIconButtonType.filledTonal => IconButton.filledTonal(
          isSelected: state.isSelected,
          icon: Icon(icon),
          selectedIcon: Icon(selectedIcon ?? icon),
          onPressed: onPressed,
        ),
      AppIconButtonType.outlined => IconButton.outlined(
          isSelected: state.isSelected,
          icon: Icon(icon),
          selectedIcon: Icon(selectedIcon ?? icon),
          onPressed: onPressed,
        ),
    };
  }
}
