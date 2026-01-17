import '../../../../app_exports.dart';

class ViewBillTab extends StatelessWidget {
  const ViewBillTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ComplaintDetailsViewModel>(
      builder: (context, vm, _) {
        final bills = vm.bills;

        return Column(
          crossAxisAlignment: .start,
          children: [
            const ViewBillTableHeader(),
            Expanded(
              child: ListView.builder(
                padding: .zero,
                itemCount: bills.length,
                itemBuilder: (context, index) {
                  final bill = bills[index];
                  final expanded = vm.isRowExpanded(index);

                  return Column(
                    crossAxisAlignment: .start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        decoration: BoxDecoration(
                          color: index.isOdd ? Colors.grey[100] : Colors.white,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                bill.title,
                                style: context.bodySmall,
                              ).align(Alignment.centerLeft),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                '\$${bill.amount.toStringAsFixed(2)}',
                                style: context.bodySmall,
                              ).center(),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                bill.date,
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
                                  onPressed: () => vm.toggleExpandRow(index),
                                ).align(.centerRight),
                              ),
                            ),
                          ],
                        ),
                      ),

                      if (expanded)
                        Column(
                          crossAxisAlignment: .start,
                          children: [
                            Text(
                              "Description:",
                              style: context.bodySmall.copyWith(
                                fontWeight: .bold,
                              ),
                            ),
                            Text(
                              bill.description,
                              style: context.bodySmall.copyWith(
                                color: AppColors.textSecondaryLight,
                                fontWeight: .normal,
                              ),
                            ),
                          ],
                        ).container(
                          width: .infinity,
                          padding: .only(
                            left: 10,
                            right: 10,
                            top: 4,
                            bottom: 4,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey[50],
                            border: Border(
                              bottom: BorderSide(color: AppColors.grey200),
                            ),
                          ),
                        ),
                    ],
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
