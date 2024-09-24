part of "widget_export.dart";

class AppSegmentedButtonData<T> {
  final T value;
  final String label;
  final IconData? icon;

  AppSegmentedButtonData({
    required this.value,
    required this.label,
    required this.icon,
  });
}

class AppSegmentedButton<T> extends StatelessWidget {
  const AppSegmentedButton({
    super.key,
    this.onSelectionChanged,
    required this.selected,
    this.multiSelectionEnabled = false,
    required this.listData,
  });

  final Function(Set<T>)? onSelectionChanged;
  final Set<T> selected;
  final bool multiSelectionEnabled;
  final List<AppSegmentedButtonData> listData;

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<T>(
      segments: listData
          .map<ButtonSegment<T>>(
            (item) => ButtonSegment<T>(
              value: item.value,
              label: Text(item.label),
              icon: item.icon != null ? Icon(item.icon) : null,
            ),
          )
          .toList(),
      selected: selected,
      onSelectionChanged: onSelectionChanged,
      multiSelectionEnabled: multiSelectionEnabled,
    );
  }
}
