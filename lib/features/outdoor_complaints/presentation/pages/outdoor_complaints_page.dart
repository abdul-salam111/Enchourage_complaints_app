import '../../../../app_exports.dart';

class OutdoorComplaintsPage extends StatefulWidget {
  const OutdoorComplaintsPage({super.key});

  @override
  State<OutdoorComplaintsPage> createState() => _OutdoorComplaintsPageState();
}

class _OutdoorComplaintsPageState extends State<OutdoorComplaintsPage> {
  final statuses = <String>[
    'All',
    'Pending',
    'Processing',
    'Assigned',
    'Resolved',
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
                    items: vm.filteredData,
                    expandedRows: vm.expandedRows,
                    selectedRows: vm.selectedRows,
                    onToggleExpand: vm.toggleExpandRow,
                    onToggleSelect: vm.toggleRowSelection,
                    onView: (complaint) {
                      AppNavigator.pushNamed(RouteNames.complaint_details);
                    },
                    onDelete: (Complaints value) {},
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
