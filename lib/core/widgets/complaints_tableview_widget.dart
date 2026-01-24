import '../../../../app_exports.dart';

class ComplaintsTableList extends StatelessWidget {
  const ComplaintsTableList({
    super.key,
    required this.items,
    required this.expandedRows,
    required this.selectedRows,
    required this.onToggleExpand,
    required this.onToggleSelect,
    required this.onView,
    required this.onDelete,
    this.isShowDepart = false,
  });

  final List<Complaint> items;
  final Set<int> expandedRows;
  final Set<int> selectedRows;
  final bool? isShowDepart;
  final ValueChanged<int> onToggleExpand;
  final ValueChanged<int> onToggleSelect;

  final ValueChanged<Complaint> onView;
  final ValueChanged<Complaint> onDelete;

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) {
      return const Center(child: Text('No complaints found'));
    }

    return ListView.builder(
      padding: .zero,
      itemCount: items.length,
      itemBuilder: (context, index) {
        final complaint = items[index];

        return ComplaintRowTile(
          complaint: complaint,
          index: index,
          isExpanded:
              complaint.complaintNo != null &&
              expandedRows.contains(complaint.complaintNo),
          isSelected:
              complaint.complaintNo != null &&
              selectedRows.contains(complaint.complaintNo),
          onToggleExpand: (id) => onToggleExpand(id),
          onToggleSelect: (id) => onToggleSelect(id),
          onView: () => onView(complaint),
          onDelete: () => onDelete(complaint),
          isShowDepart: isShowDepart ?? false,
        );
      },
    );
  }
}

class ComplaintRowTile extends StatelessWidget {
  const ComplaintRowTile({
    super.key,
    required this.complaint,
    required this.index,
    required this.isExpanded,
    required this.isSelected,
    required this.onToggleExpand,
    required this.onToggleSelect,
    required this.onView,
    required this.onDelete,
    this.isShowDepart = false,
  });

  final Complaint complaint;
  final int index;

  final bool isExpanded;
  final bool isSelected;

  final ValueChanged<int> onToggleExpand;
  final ValueChanged<int> onToggleSelect;

  final VoidCallback onView;
  final VoidCallback onDelete;
  final bool isShowDepart;
  @override
  Widget build(BuildContext context) {
    final id = complaint.complaintNo;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: index.isOdd ? const Color(0xffF5F7FA) : Colors.white,
        border: Border(bottom: BorderSide(color: Colors.grey[300]!)),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 24,
                height: 20,
                child: Checkbox(
                  activeColor: AppColors.primaryDark,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  side: const BorderSide(width: 1),
                  value: isSelected,
                  onChanged: (_) {
                    if (id != null) onToggleSelect(id);
                  },
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    (complaint.complaintNo ?? '-').toString(),
                    style: context.bodySmall,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  (complaint.memberName ?? '-').toString(),
                  style: context.bodySmall,
                  maxLines: 2,
                ),
              ),
              Expanded(
                flex: 1,
                child: _StatusChip(status: complaint.status).center(),
              ),
              Expanded(
                flex: 1,
                child: IconButton(
                  padding: EdgeInsets.zero,
                  icon: Icon(
                    isExpanded
                        ? Iconsax.arrow_square_up
                        : Iconsax.arrow_square_down,
                    color: AppColors.primaryDark,
                    size: 20,
                  ),
                  onPressed: () {
                    if (id != null) onToggleExpand(id);
                  },
                ).align(Alignment.centerRight),
              ),
            ],
          ),
          if (isExpanded) expandedDetails(context, isShowDepart),
        ],
      ),
    );
  }

  Widget expandedDetails(BuildContext context, bool isShowDepart) {
    return Container(
      width: double.infinity,
      padding: .all(5),
      margin: .only(bottom: 8),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: .circular(8),
        border: .all(color: AppColors.primary.withAlpha(60)),
      ),
      child: Row(
        children: [
          SizedBox(
            width: context.screenWidth * 0.4,
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Text(
                  isShowDepart ? "Department" : 'Address',
                  style: context.bodySmall.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  isShowDepart
                      ? complaint.complaintType ?? ""
                      : (complaint.address ?? '-').toString(),
                  style: context.bodySmall,
                  maxLines: 1,
                ),
              ],
            ),
          ),
          widthBox(15),
          Column(
            crossAxisAlignment: .start,
            children: [
              Text(
                'Date',
                style: context.bodySmall.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                complaint.createdAt?.formatted ?? '-',
                style: context.bodySmall,
              ),
            ],
          ),
          const Spacer(),
          SizedBox(
            width: 25,
            child: IconButton(
              padding: EdgeInsets.zero,
              onPressed: onView,
              icon: Container(
                padding: .all(4),
                decoration: BoxDecoration(
                  color: AppColors.primaryLight,
                  borderRadius: .circular(5),
                ),
                child: const Center(
                  child: Icon(Iconsax.eye, size: 15, color: Colors.white),
                ),
              ),
            ),
          ),
          widthBox(10),
          SizedBox(
            width: 25,
            child: IconButton(
              padding: EdgeInsets.zero,
              onPressed: onDelete,
              icon: Container(
                padding: .all(4),
                decoration: BoxDecoration(
                  color: AppColors.errorLight,
                  borderRadius: .circular(5),
                ),
                child: const Center(
                  child: Icon(Iconsax.trash, size: 15, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _StatusChip extends StatelessWidget {
  const _StatusChip({required this.status});

  final String? status;

  @override
  Widget build(BuildContext context) {
    final s = (status ?? '').trim();

    final bg = s == 'Resolved'
        ? AppColors.success.withAlpha(70)
        : s == 'Processing'
        ? Colors.lightBlueAccent.withAlpha(70)
        : AppColors.primaryLight.withAlpha(70);

    return Text(
      s.isEmpty ? '-' : s,
      style: context.labelSmall,
      textAlign: TextAlign.center,
    ).container(
      padding: const EdgeInsets.symmetric(vertical: 4),
      width: 80,
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
