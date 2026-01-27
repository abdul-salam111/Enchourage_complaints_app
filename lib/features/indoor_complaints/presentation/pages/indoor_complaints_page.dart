import '../../../../app_exports.dart';

class IndoorComplaintsPage extends StatefulWidget {
  const IndoorComplaintsPage({super.key});

  @override
  State<IndoorComplaintsPage> createState() => _IndoorComplaintsPageState();
}

class _IndoorComplaintsPageState extends State<IndoorComplaintsPage> {
  final statuses = <String>[
    'Select Status',
    'Pending',
    'Processing',
    'Assigned',
    'Resolved',
  ];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => sl<IndoorComplaintsViewModel>()..loadIndoorComplaints(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Indoor Complaints')),
        body: Consumer<IndoorComplaintsViewModel>(
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
                      fileName: 'indoor_complaints',
                      sheetName: 'Complaints',
                      complaintsList: vm.filteredData,
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
                // Pagination Widget
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
