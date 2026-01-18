import 'package:dropdown_search/dropdown_search.dart';
import 'package:enchourage_app/app_exports.dart';
import 'package:enchourage_app/core/theme/theme_utils.dart';
import 'package:flutter/material.dart';

class RequiredDropdownSearch extends StatelessWidget {
  const RequiredDropdownSearch({
    super.key,
    required this.label,
    this.isRequired = true,
    required this.items,
    this.selectedItem,
    this.hintText = "Search",
    this.dropdownHintText = "Select",
    required this.onChanged,
    this.margin = const EdgeInsets.only(top: 5),
    this.itemTextColor,
    this.menuBackgroundColor = Colors.white,
    this.border,
    this.contentPadding = const EdgeInsets.symmetric(
      horizontal: 12,
      vertical: 10,
    ),

    // ✅ height controls
    this.fieldHeight = 40, // closed dropdown height
    this.searchFieldHeight = 38, // popup search height
    this.itemHeight = 36, // popup item row height
  });

  final String label;
  final bool isRequired;

  final List<String> items;
  final String? selectedItem;

  final String hintText;

  /// (inside InputDecoration hint)
  final String dropdownHintText;

  final ValueChanged<String?> onChanged;

  final EdgeInsets margin;
  final Color? itemTextColor;
  final Color menuBackgroundColor;
  final InputBorder? border;
  final EdgeInsets contentPadding;

  final double fieldHeight;
  final double searchFieldHeight;
  final double itemHeight;

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
          child: DropdownSearch<String>(
            selectedItem: selectedItem,
            items: (String filter, LoadProps? loadProps) => items,

            dropdownBuilder: (context, selected) => Align(
              alignment: Alignment.centerLeft,
              child: Text(
                selected ?? "",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: context.bodySmall.copyWith(
                  color: AppColors.textSecondaryLight,
                ),
              ),
            ),

            itemAsString: (item) => item,

            popupProps: PopupProps.menu(
              showSearchBox: true,
              searchDelay: Duration.zero,
              menuProps: MenuProps(
                backgroundColor: menuBackgroundColor,
                margin: .zero,
              ),

              itemBuilder: (context, item, isDisabled, isSelected) => SizedBox(
                height: itemHeight,
                child: Align(
                  alignment: .centerLeft,
                  child: Padding(
                    padding: const .symmetric(horizontal: 12),
                    child: Text(
                      item,
                      style: context.bodySmall.copyWith(
                        color: AppColors.textSecondaryLight,
                      ),
                      maxLines: 1,
                      overflow: .ellipsis,
                    ),
                  ),
                ),
              ),

              // ✅ SEARCH FIELD HEIGHT
              searchFieldProps: TextFieldProps(
                cursorHeight: 16,
                style: context.bodySmall,
                decoration: InputDecoration(
                  constraints: .tightFor(height: searchFieldHeight),
                  isDense: true,
                  contentPadding: const .only(top: 12, bottom: 5, left: 12),
                  border: defaultBorder,
                  hintText: hintText, //

                  hintStyle: context.bodySmall.copyWith(
                    color: AppColors.textSecondaryLight,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),

            // ✅ CLOSED FIELD DECORATION (height controlled by SizedBox)
            decoratorProps: DropDownDecoratorProps(
              decoration: InputDecoration(
                isDense: true,
                contentPadding: contentPadding,
                border: defaultBorder,

                // ✅ make field white
                filled: true,
                fillColor: Colors.white,

                hintText: dropdownHintText,
                hintStyle: context.bodySmall.copyWith(
                  color: AppColors.textSecondaryLight,
                ),
              ),
            ),

            onChanged: onChanged,
          ),
        ),
      ],
    );
  }
}
