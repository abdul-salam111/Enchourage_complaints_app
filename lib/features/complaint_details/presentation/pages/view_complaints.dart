import 'package:enchourage_app/app_exports.dart';

class ViewComplaintsBill extends StatefulWidget {
  final ComplaintBills complaintBills;
  const ViewComplaintsBill({super.key, required this.complaintBills});

  @override
  State<ViewComplaintsBill> createState() => _ViewComplaintsBillState();
}

class _ViewComplaintsBillState extends State<ViewComplaintsBill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("View Complaints")),
      body: ListView(
        padding: .all(8),
        children: [
          Column(
            crossAxisAlignment: .start,
            children: [
              Text(
                "Billing Type:",
                style: context.bodySmall.copyWith(color: AppColors.grey600),
              ),
              Text(
                widget.complaintBills.billing_type.toString(),
                style: context.bodySmall.copyWith(fontWeight: .bold),
              ),
              heightBox(5),
              Text(
                "Amount:",
                style: context.bodySmall.copyWith(color: AppColors.grey600),
              ),
              Text(
                widget.complaintBills.amount.toString(),
                style: context.bodySmall.copyWith(fontWeight: .bold),
              ),
              heightBox(5),
              Text(
                "Description:",
                style: context.bodySmall.copyWith(color: AppColors.grey600),
              ),
              Text(
                widget.complaintBills.description.toString(),
                style: context.bodySmall.copyWith(fontWeight: .bold),
              ),
              heightBox(5),
              Text(
                "Created At:",
                style: context.bodySmall.copyWith(color: AppColors.grey600),
              ),
              Text(
                widget.complaintBills.created_at?.formatted ?? "",
                style: context.bodySmall.copyWith(fontWeight: .bold),
              ),
            ],
          ).container(
            padding: .all(12),
            decoration: BoxDecoration(
              borderRadius: .circular(8),
              color: AppColors.grey100,
            ),
          ),
          heightBox(10),
          widget.complaintBills.receipts != null
              ? Column(
                  children: List.generate(
                    widget.complaintBills.receipts!.length,
                    (index) => CachedNetworkImage(
                      imageUrl: widget.complaintBills.receipts![index]
                          .toString(),
                      height: 200,
                    ),
                  ),
                )
              : Text(
                  "No Receipts",
                  style: context.bodyMedium.copyWith(color: AppColors.grey400),
                ),
        ],
      ),
    );
  }
}
