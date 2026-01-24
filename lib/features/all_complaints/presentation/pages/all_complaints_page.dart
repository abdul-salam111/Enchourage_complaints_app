import '../../../../app_exports.dart';

class AllComplaintsPage extends StatefulWidget {
  const AllComplaintsPage({super.key});

  @override
  State<AllComplaintsPage> createState() => _AllComplaintsPageState();
}

class _AllComplaintsPageState extends State<AllComplaintsPage> {
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
      create: (_) => sl<AllComplaintsViewModel>()..loadComplaints(),
      child: UnfocusWrapper(
        child: Scaffold(
          appBar: AppBar(title: const Text('All Complaints')),
          body: Consumer<AllComplaintsViewModel>(
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
                        fileName: 'all_complaints',
                        sheetName: 'Complaints',
                        complaintsList: vm.filteredData,
                      );
                    },
                    onDelete: () {},
                  ),

                  TableHeaderWidget(
                    isAllSelected: vm.isAllSelected,
                    onToggleAll: (val) => vm.toggleSelectAll(val ?? false),
                  ),

                  Expanded(
                    child: ComplaintsTableList(
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
                      onDelete: (Complaint value) {},
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
      ),
    );
  }
}
