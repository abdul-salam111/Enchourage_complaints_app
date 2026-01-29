import '../../../../app_exports.dart';

class ViewBillTab extends StatelessWidget {
  const ViewBillTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ComplaintDetailsViewModel>(
      builder: (context, vm, _) {
        return ExpandableBillList(
          header: const ViewBillTableHeader(),
          items: vm.complaintBillsList,
          isExpanded: vm.isRowExpanded,
          onToggle: vm.toggleExpandRow,
        );
      },
    );
  }
}
