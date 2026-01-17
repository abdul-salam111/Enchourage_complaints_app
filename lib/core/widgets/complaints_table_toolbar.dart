import '../../../../app_exports.dart';

class ComplaintsTableToolbar extends StatelessWidget {
  const ComplaintsTableToolbar({
    super.key,
    required this.searchFocusNode,
    required this.onSearchChanged,
    required this.selectedStatus,
    required this.statuses,
    required this.onStatusChanged,
    required this.onExport,
    required this.onDelete,
    this.hintText = 'Search',
  });

  final FocusNode searchFocusNode;
  final ValueChanged<String> onSearchChanged;

  final String selectedStatus;
  final List<String> statuses;
  final ValueChanged<String> onStatusChanged;

  final VoidCallback onExport;
  final VoidCallback onDelete;

  final String hintText;

  @override
  Widget build(BuildContext context) {
    final value = statuses.contains(selectedStatus) ? selectedStatus : '';

    return Padding(
      padding: .symmetric(horizontal: 8, vertical: 8),
      child: Column(
        children: [
          TextField(
            focusNode: searchFocusNode,
            cursorHeight: 15,
            onChanged: onSearchChanged,
            style: context.bodySmall.copyWith(fontSize: 14),
            decoration: InputDecoration(
              isDense: true,
              contentPadding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 10,
              ),
              prefixIconConstraints: const BoxConstraints(
                minWidth: 25,
                minHeight: 25,
              ),
              hintText: hintText,
              prefixIcon: const Icon(Iconsax.search_normal, size: 15),
              hintStyle: context.bodySmall.copyWith(fontSize: 14),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: CustomDropdown(
                  value: value,
                  statuses: statuses,
                  onChanged: (s) => onStatusChanged(s ?? ''),
                ),
              ),
              widthBox(10),
              IconButton(
                onPressed: onExport,
                icon: Container(
                  padding: .all(4),
                  decoration: BoxDecoration(
                    color: AppColors.primaryDark,
                    borderRadius: .circular(5),
                  ),
                  child: const Icon(Iconsax.import, color: Colors.white),
                ),
              ),
              IconButton(
                onPressed: onDelete,
                icon: Container(
                  padding: .all(4),
                  decoration: BoxDecoration(
                    color: AppColors.errorLight,
                    borderRadius: .circular(5),
                  ),
                  child: const Icon(Iconsax.trash, color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomDropdown extends StatelessWidget {
  const CustomDropdown({
    super.key,
    required this.value,
    required this.statuses,
    required this.onChanged,
  });

  final String value;
  final List<String> statuses;
  final ValueChanged<String?> onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .only(top: 4, left: 8, right: 8, bottom: 4),
      margin: .zero,
      decoration: BoxDecoration(
        borderRadius: .circular(6),
        color: Colors.white,
        border: .all(color: Colors.grey[300]!),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          isDense: true,
          isExpanded: true,
          value: value,
          icon: const Icon(Iconsax.arrow_down_1, size: 16),
          items: statuses.map((s) {
            return DropdownMenuItem<String>(
              value: s,
              child: Text(s, style: context.bodySmall),
            );
          }).toList(),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
