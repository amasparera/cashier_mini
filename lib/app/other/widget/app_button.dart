part of 'widget_export.dart';

enum AppButtonState {
  active,
  disable,
  loading,
}

enum AppButtonType {
  elevanted,
  filled,
  filledTonal,
  outline,
  text,
}

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    this.state = AppButtonState.active,
    this.type = AppButtonType.elevanted,
    required this.title,
    required this.onPressed,
    this.icon,
  });

  final AppButtonState state;
  final AppButtonType type;
  final String title;
  final VoidCallback onPressed;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    /// handle onpressed
    VoidCallback? onPressed = switch (state) {
      AppButtonState.active => this.onPressed,
      AppButtonState.disable => null,
      AppButtonState.loading => () {},
    };

    /// handle icon
    Icon? icon = this.icon != null ? Icon(this.icon) : null;

    /// widget use
    return switch (type) {
      AppButtonType.elevanted when icon != null => ElevatedButton.icon(
          onPressed: onPressed,
          label: Text(title),
          icon: icon,
        ),
      AppButtonType.filled when icon != null => FilledButton.icon(
          onPressed: onPressed,
          label: Text(title),
          icon: icon,
        ),
      AppButtonType.filledTonal when icon != null => FilledButton.tonalIcon(
          onPressed: onPressed,
          label: Text(title),
          icon: icon,
        ),
      AppButtonType.outline when icon != null => OutlinedButton.icon(
          onPressed: onPressed,
          label: Text(title),
          icon: icon,
        ),
      AppButtonType.text when icon != null => TextButton.icon(
          onPressed: onPressed,
          label: Text(title),
          icon: icon,
        ),
      AppButtonType.elevanted => ElevatedButton(
          onPressed: onPressed,
          child: Text(title),
        ),
      AppButtonType.filled => FilledButton(
          onPressed: onPressed,
          child: Text(title),
        ),
      AppButtonType.filledTonal => FilledButton.tonal(
          onPressed: onPressed,
          child: Text(title),
        ),
      AppButtonType.outline => OutlinedButton(
          onPressed: onPressed,
          child: Text(title),
        ),
      AppButtonType.text => TextButton(
          onPressed: onPressed,
          child: Text(title),
        ),
    };
  }
}
