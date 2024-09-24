part of 'app_show.dart';

class _AppSnackbar {
  static void show(
    BuildContext context,
    String message, {
    bool useCloseButton = false,
    SnackBarAction? action,
    Color? backgroundColor,
    Duration? duration,
  }) {
    final SnackBarAction? actionData = action ??
        (useCloseButton
            ? SnackBarAction(
                label: 'close'.getString(context),
                onPressed: () {
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                },
              )
            : null);

    final snackBar = SnackBar(
      behavior: SnackBarBehavior.floating,
      width: 400.0,
      backgroundColor: backgroundColor,
      content: Text(message),
      action: actionData,
      duration: duration ?? const Duration(seconds: 4),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
