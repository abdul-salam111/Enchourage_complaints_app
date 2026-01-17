import '../../../../app_exports.dart';

class ComplaintDetailsPage extends StatefulWidget {
  const ComplaintDetailsPage({super.key});

  @override
  State<ComplaintDetailsPage> createState() => _ComplaintDetailsPageState();
}

class _ComplaintDetailsPageState extends State<ComplaintDetailsPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  final statuses = <String>[
    'Select Status',
    'Pending',
    'Processing',
    'Assigned',
    'Resolved',
  ];
  final duration = <String>[
    'Select Duration',
    '04 Hours',
    '08 Hours',
    '12 Hours',
    '24 Hours',
    '48 Hours',
    '05 Days',
    '01 Week',
    '02 Weeks',
  ];
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => sl<ComplaintDetailsViewModel>(),
      child: Scaffold(
        appBar: AppBar(title: const Text('ComptNo: 5347')),
        body: Consumer<ComplaintDetailsViewModel>(
          builder: (context, vm, _) {
            return DefaultTabController(
              length: 3,
              child: NestedScrollView(
                headerSliverBuilder: (context, innerBoxIsScrolled) {
                  return [
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: .all(12),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: CustomDropdown(
                                    value: vm.selectedTime,
                                    statuses: duration,
                                    onChanged: (value) =>
                                        vm.selectedTime = value!,
                                  ),
                                ),
                                widthBox(10),
                                Expanded(
                                  child: CustomDropdown(
                                    value: vm.selectedStatus,
                                    statuses: statuses,
                                    onChanged: (value) =>
                                        vm.selectedStatus = value!,
                                  ),
                                ),
                              ],
                            ),
                            heightBox(10),
                            Container(
                              padding: .all(12),
                              decoration: BoxDecoration(
                                borderRadius: .circular(8),
                                color: Colors.grey[50],
                                border: .all(color: AppColors.grey200),
                              ),
                              child: Column(
                                crossAxisAlignment: .start,
                                children: [
                                  CardRow(
                                    title: 'Complaint No:',
                                    value: '5347',
                                  ),
                                  heightBox(10),
                                  CardRow(
                                    title: 'Member Name:',
                                    value: 'ZARTAJ KHANAM',
                                  ),
                                  heightBox(10),
                                  CardRow(
                                    title: 'Phone No:',
                                    value: '03115308116',
                                  ),
                                  heightBox(10),
                                  CardRow(
                                    title: 'Address:',
                                    value: 'House No.14-B street 12 Block A',
                                  ),
                                  heightBox(10),
                                  CardRow(
                                    title: 'Title:',
                                    value: 'Society Janitorial Services',
                                  ),
                                  heightBox(10),
                                  CardRow(title: 'Date:', value: '12-01-2026'),
                                  heightBox(10),
                                  CardRow(title: 'Assign By:', value: 'Admin'),
                                  heightBox(10),
                                  CardRow(
                                    title: 'Assign To:',
                                    value: 'Salahuddin Ahmed',
                                  ),
                                  heightBox(10),
                                  CardRow(
                                    title: 'Complaint Type:',
                                    value: 'Society Janitorial Services',
                                  ),
                                  heightBox(10),
                                  Text(
                                    "Description:",
                                    style: context.bodySmall.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Bushes arround the house has not been removed. Pl remove the same at soon as possible.",
                                    style: context.bodySmall.copyWith(
                                      fontWeight: FontWeight.normal,
                                      color: AppColors.textSecondaryLight,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SliverAppBar(
                      pinned: true,
                      automaticallyImplyLeading: false,
                      backgroundColor: Colors.white,
                      elevation: 0,
                      toolbarHeight: 0,
                      collapsedHeight: 0,
                      bottom: TabBar(
                        indicatorColor: AppColors.primaryDark,
                        labelColor: AppColors.primaryDark,
                        unselectedLabelColor: AppColors.textSecondaryLight,
                        tabs: const [
                          Tab(text: 'Messages'),
                          Tab(text: 'View Bill'),
                          Tab(text: 'Add Bill'),
                        ],
                      ),
                    ),
                  ];
                },
                body: const TabBarView(
                  children: [MessagesTab(), ViewBillTab(), AddBillTab()],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
