import '../../../../app_exports.dart';

class OutdoorComplaintsPage extends StatefulWidget {
  const OutdoorComplaintsPage({super.key});

  @override
  State<OutdoorComplaintsPage> createState() => _OutdoorComplaintsPageState();
}

class _OutdoorComplaintsPageState extends State<OutdoorComplaintsPage> {
  final statuses = <String>[
    'Select Status',
    'Pending',
    'Processing',
    'Assigned',
    'Resolved',
  ];

  final departments = <String>[
    'Select Department',
    'Security Department',
    'Electrical Department',
    'Society Janitorial Services',
    'Water Supply Department',
    'BIlling Department',
    'Civil Works Department(Road, Sewerage, Rain Drain etc)',
    'Horticulture Department',
    'Building Control Department',
    'Verification Department(Owner/Tenant Data)',
    'IT Department',
    'Misc',
    'Mosque Complaints',
    'Street Light Complaints',
  ];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => sl<OutdoorComplaintsViewmodel>()..loadOutdoorComplaints(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Outdoor Complaints')),
        body: Consumer<OutdoorComplaintsViewmodel>(
          builder: (context, vm, _) {
            if (vm.isLoading) {
              return const Center(child: LoadingIndicator());
            }
            return Column(
              children: [
                ComplaintsTableToolbar(
                  searchFocusNode: vm.searchFocusNode,
                  onSearchChanged: vm.search,
                  selectedStatus: vm.selectedStatus,
                  statuses: statuses,
                  onStatusChanged: vm.filterByStatus,
                  onExport: () async {
                    await vm.export(
                      fileName: 'outdoor_complaints',
                      sheetName: 'Complaints',
                      complaintsList: vm.filteredData as List<Complaint>?,
                    );
                  },
                  onDelete: () {
                    confirmationPopupHelper(
                      context,
                      () async {
                        AppNavigator.pop();
                        await vm.deleteSelectedItems();
                      },
                      () {
                        AppNavigator.pop();
                      },
                      "Delete Complaint",
                      "Are you sure you want to delete this complaint?",
                      "Delete",
                      "Cancel",
                    );
                  },
                ),
                CustomDropdown(
                  value: vm.selectedDepartment,
                  valuesList: departments,
                  onChanged: (department) {
                    if (department != null) {
                      vm.filterByDepartment(department);
                    }
                  },
                ).withPadding(.only(left: 8, right: 10, bottom: 10)),
                TableHeaderWidget(
                  isAllSelected: vm.isAllSelected,
                  onToggleAll: (val) => vm.toggleSelectAll(val ?? false),
                ),
                Expanded(
                  child: ComplaintsTableList(
                    isDeleting: vm.isDeleting,
                    deletingId: vm.deletingId,
                    items: vm.paginatedData,
                    expandedRows: vm.expandedRows,
                    selectedRows: vm.selectedRows,
                    onToggleExpand: vm.toggleExpandRow,
                    onToggleSelect: vm.toggleRowSelection,
                    onView: (complaint) {
                      AppNavigator.pushNamed(
                        RouteNames.complaint_details,
                        extra: complaint.complaintNo,
                      );
                    },
                    onDelete: (Complaint value) {
                      confirmationPopupHelper(
                        context,
                        () async {
                          AppNavigator.pop();
                          await vm.deleteItem(value.complaintNo!);
                        },
                        () {
                          AppNavigator.pop();
                        },
                        "Delete Complaint",
                        "Are you sure you want to delete this complaint?",
                        "Delete",
                        "Cancel",
                      );
                    },
                  ),
                ),
                PaginationWidget(
                  currentPage: vm.currentPage,
                  totalPages: vm.totalPages,
                  totalItems: vm.totalItems,
                  onPrevious: vm.previousPage,
                  onNext: vm.nextPage,
                  onPageSelected: vm.goToPage,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
