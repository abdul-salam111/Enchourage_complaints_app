import 'package:dropdown_search/dropdown_search.dart';
import 'package:enchourage_app/app_exports.dart';

class RequiredDropdownSearch<T> extends StatelessWidget {
  const RequiredDropdownSearch({
    super.key,
    required this.label,
    this.isRequired = true,
    required this.items,
    this.selectedItem,
    this.hintText = "Search",
    this.dropdownHintText = "Select",
    required this.onChanged,
    required this.itemAsString,
    this.compareFn, // ✅ NEW
    this.margin = const EdgeInsets.only(top: 5),
    this.itemTextColor,
    this.menuBackgroundColor = Colors.white,
    this.border,
    this.contentPadding = const EdgeInsets.symmetric(
      horizontal: 12,
      vertical: 10,
    ),
    this.fieldHeight = 40,
    this.searchFieldHeight = 38,
    this.itemHeight = 36,
    this.isLoading = false, // optional
  });

  final String label;
  final bool isRequired;

  final List<T> items;
  final T? selectedItem;

  final String hintText;
  final String dropdownHintText;

  final ValueChanged<T?> onChanged;
  final String Function(T) itemAsString;

  // ✅ REQUIRED for custom classes
  final bool Function(T a, T b)? compareFn;

  final EdgeInsets margin;
  final Color? itemTextColor;
  final Color menuBackgroundColor;
  final InputBorder? border;
  final EdgeInsets contentPadding;

  final double fieldHeight;
  final double searchFieldHeight;
  final double itemHeight;

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final errorColor = Theme.of(context).colorScheme.error;
    final defaultBorder = border ?? const OutlineInputBorder();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: label,
                style: DefaultTextStyle.of(
                  context,
                ).style.copyWith(fontSize: 12, fontWeight: FontWeight.w700),
              ),
              if (isRequired)
                TextSpan(
                  text: " *",
                  style: DefaultTextStyle.of(context).style.copyWith(
                    color: errorColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
            ],
          ),
        ),
        Padding(padding: margin),
        SizedBox(
          height: fieldHeight,
          child: DropdownSearch<T>(
            selectedItem: selectedItem,
            compareFn: compareFn, // ✅ FIX for Blocks
            items: (String filter, LoadProps? loadProps) => items,
            itemAsString: (item) => itemAsString(item),

            dropdownBuilder: (context, selected) => Align(
              alignment: Alignment.centerLeft,
              child: Text(
                selected == null ? "" : itemAsString(selected),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: context.bodySmall.copyWith(
                  color: AppColors.textSecondaryLight,
                ),
              ),
            ),

            popupProps: PopupProps.menu(
              showSearchBox: true,
              searchDelay: Duration.zero,
              menuProps: MenuProps(
                backgroundColor: menuBackgroundColor,
                margin: EdgeInsets.zero,
              ),
              itemBuilder: (context, item, isDisabled, isSelected) => SizedBox(
                height: itemHeight,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      itemAsString(item),
                      style: context.bodySmall.copyWith(
                        color: AppColors.textSecondaryLight,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ),
              searchFieldProps: TextFieldProps(
                cursorHeight: 16,
                style: context.bodySmall,
                decoration: InputDecoration(
                  constraints: BoxConstraints.tightFor(
                    height: searchFieldHeight,
                  ),
                  isDense: true,
                  contentPadding: const EdgeInsets.only(
                    top: 12,
                    bottom: 5,
                    left: 12,
                  ),
                  border: defaultBorder,
                  hintText: hintText,
                  hintStyle: context.bodySmall.copyWith(
                    color: AppColors.textSecondaryLight,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),

            decoratorProps: DropDownDecoratorProps(
              decoration: InputDecoration(
                isDense: true,
                contentPadding: contentPadding,
                border: defaultBorder,
                filled: true,
                fillColor: Colors.white,
                hintText: dropdownHintText,
                hintStyle: context.bodySmall.copyWith(
                  color: AppColors.textSecondaryLight,
                ),
              ),
            ),

            onChanged: isLoading ? null : onChanged,
          ),
        ),
      ],
    );
  }
}
