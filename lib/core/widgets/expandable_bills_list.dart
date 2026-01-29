import 'package:enchourage_app/features/complaint_details/data/models/response_models/complaint_bills_list/complaint_bills_list.dart';

import '../../../../app_exports.dart';

class ExpandableBillList extends StatelessWidget {
  const ExpandableBillList({
    super.key,
    required this.items,
    required this.isExpanded,
    required this.onToggle,
    this.header,
    this.padding = EdgeInsets.zero,
  });

  final List<ComplaintBills> items;
  final bool Function(int index) isExpanded;
  final void Function(int index) onToggle;

  final Widget? header;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (header != null) header!,
        Expanded(
          child: ListView.builder(
            padding: padding,
            itemCount: items.length,
            itemBuilder: (context, index) {
              final bill = items[index];
              final expanded = isExpanded(index);

              return ExpandableBillRow(
                title: bill.id.toString(),
                amountText: '\$${bill.amount.toString()}',
                dateText: bill.created_at?.formatted ?? "",
                description: bill.description.toString(),
                expanded: expanded,
                isOdd: index.isOdd,
                onToggle: () => onToggle(index),
              );
            },
          ),
        ),
      ],
    );
  }
}

class ExpandableBillRow extends StatelessWidget {
  const ExpandableBillRow({
    super.key,
    required this.title,
    required this.amountText,
    required this.dateText,
    required this.description,
    required this.expanded,
    required this.isOdd,
    required this.onToggle,
  });

  final String title;
  final String amountText;
  final String dateText;
  final String description;

  final bool expanded;
  final bool isOdd;
  final VoidCallback onToggle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
            color: isOdd ? Colors.grey[100] : Colors.white,
          ),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  title,
                  style: context.bodySmall,
                ).align(Alignment.centerLeft),
              ),
              Expanded(
                flex: 1,
                child: Text(amountText, style: context.bodySmall).center(),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  dateText,
                  style: context.bodySmall,
                ).align(Alignment.centerRight),
              ),
              Expanded(
                flex: 1,
                child: SizedBox(
                  height: 30,
                  width: 30,
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    icon: Icon(
                      expanded
                          ? Iconsax.arrow_square_down
                          : Iconsax.arrow_square_up,
                      color: AppColors.primaryDark,
                      size: 20,
                    ),
                    onPressed: onToggle,
                  ).align(Alignment.centerRight),
                ),
              ),
            ],
          ),
        ),

        if (expanded)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Description:",
                style: context.bodySmall.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                description,
                style: context.bodySmall.copyWith(
                  color: AppColors.textSecondaryLight,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ).container(
            width: double.infinity,
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
              top: 4,
              bottom: 4,
            ),
            decoration: BoxDecoration(
              color: Colors.grey[50],
              border: Border(bottom: BorderSide(color: AppColors.grey200)),
            ),
          ),
      ],
    );
  }
}
