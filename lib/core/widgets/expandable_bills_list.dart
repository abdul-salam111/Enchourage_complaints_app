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
      crossAxisAlignment: .start,
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
                title: bill.billingType.toString(),
                amountText: '\$${bill.amount.toString()}',
                dateText: bill.createdAt?.formatted ?? "",
                description: bill.description.toString(),
                expanded: expanded,
                isOdd: index.isOdd,
                onToggle: () => onToggle(index),
                bill: bill,
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
    required this.bill,
  });

  final String title;
  final String amountText;
  final String dateText;
  final String description;

  final bool expanded;
  final bool isOdd;
  final VoidCallback onToggle;
  final ComplaintBills bill;

  @override
  Widget build(BuildContext context) {
    return Consumer<ComplaintDetailsViewModel>(
      builder: (context, vm, _) {
        return Column(
          crossAxisAlignment: .start,
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
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: .start,
                      children: [
                        Text(
                          "Description:",
                          style: context.bodySmall.copyWith(fontWeight: .bold),
                        ),
                        Text(
                          description,
                          style: context.bodySmall.copyWith(
                            color: AppColors.textSecondaryLight,
                            fontWeight: .normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  widthBox(10),
                  InkWell(
                    onTap: () {
                      context.pushNamed(
                        RouteNames.viewcomplaintbill,
                        extra: bill,
                      );
                    },
                    child: Container(
                      padding: .all(3),
                      decoration: BoxDecoration(
                        color: AppColors.warningDark,
                        borderRadius: .circular(5),
                      ),
                      child: const Icon(
                        Iconsax.eye,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  ),
                  widthBox(10),
                  InkWell(
                    onTap: () {
                      confirmationPopupHelper(
                        context,
                        () async {
                          AppNavigator.pop();
                          await vm.deleteComplaintBill(
                            context: context,
                            billId: bill.id!,
                          );
                        },
                        () {
                          AppNavigator.pop();
                        },
                        "Delete Bill!",
                        "Are you sure you want to delete this bill?",
                        "Delete",
                        "Cancel",
                      );
                    },
                    child: Container(
                      padding: .all(3),
                      decoration: BoxDecoration(
                        color: AppColors.errorLight,
                        borderRadius: .circular(5),
                      ),
                      child: vm.isDeletingBill
                          ? const LoadingIndicator(
                              strokeWidth: 2,
                              size: 15,
                              color: Colors.white,
                            )
                          : const Icon(
                              Iconsax.trash,
                              color: Colors.white,
                              size: 15,
                            ),
                    ),
                  ),
                  widthBox(10),
                  InkWell(
                    onTap: () {
                      // Set the bill in edit mode
                      vm.setEditingBill(bill);

                      // Get the TabController from the ComplaintDetailsPage
                      final tabController = DefaultTabController.of(context);

                      tabController.animateTo(2);
                    },
                    child: Container(
                      padding: .all(3),
                      decoration: BoxDecoration(
                        color: AppColors.primaryDark,
                        borderRadius: .circular(5),
                      ),
                      child: const Icon(
                        Iconsax.edit,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  ),
                  widthBox(10),
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
                  border: Border(bottom: BorderSide(color: AppColors.grey200)),
                ),
              ),
          ],
        );
      },
    );
  }
}
