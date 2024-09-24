part of 'widget_export.dart';

class AppDropdown<T> extends StatelessWidget {
  const AppDropdown({super.key, this.initValue, required this.title, required this.items, this.onSelected, this.itemTitle});
  final T? initValue;
  final String title;
  final List<T> items;
  final ValueChanged<T?>? onSelected;
  final String Function(T)? itemTitle;

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController(text: initValue != null ? (itemTitle?.call(initValue as T) ?? initValue.toString()) : '');
    final List<DropdownMenuEntry<T>> dropdownMenuEntries = <DropdownMenuEntry<T>>[];
    for (final item in items) {
      dropdownMenuEntries.add(DropdownMenuEntry<T>(value: item, label: itemTitle?.call(item) ?? item.toString()));
    }
    return DropdownMenu<T>(
      initialSelection: initValue,
      controller: controller,
      label: Text(title),
      dropdownMenuEntries: dropdownMenuEntries,
      onSelected: onSelected,
      enableSearch: true,
    );
  }
}
