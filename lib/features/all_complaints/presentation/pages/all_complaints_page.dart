import '../../../../app_exports.dart';

class AllComplaintsPage extends StatefulWidget {
  const AllComplaintsPage({super.key});

  @override
  State<AllComplaintsPage> createState() => _AllComplaintsPageState();
}

class _AllComplaintsPageState extends State<AllComplaintsPage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => sl<AllComplaintsViewModel>()..loadComplaints(),
      child: Scaffold(
        appBar: AppBar(title: const Text('All Complaints')),
        body: Consumer<AllComplaintsViewModel>(
          builder: (context, vm, _) {
            if (vm.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: TextField(
                    focusNode: vm.searchFocusNode,
                    cursorHeight: 15,
                    onChanged: vm.search,
                    style: context.bodySmall.copyWith(fontSize: 14),
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 10,
                      ),
                      prefixIconConstraints: const BoxConstraints(
                        minWidth: 25,
                        minHeight: 25,
                      ),
                      hintText: "Search",
                      prefixIcon: const Icon(Iconsax.search_normal, size: 15),
                      hintStyle: context.bodySmall.copyWith(fontSize: 14),
                    ),
                  ),
                ),

                Row(
                  children: [
                    Expanded(child: statusFilterDropdown(context)),
                    IconButton(
                      onPressed: () {},
                      icon: Container(
                        padding: .all(4),
                        decoration: BoxDecoration(
                          color: AppColors.primaryDark,
                          borderRadius: .circular(5),
                        ),
                        child: Icon(Iconsax.import, color: Colors.white),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Container(
                        padding: .all(4),
                        decoration: BoxDecoration(
                          color: AppColors.errorLight,
                          borderRadius: .circular(5),
                        ),
                        child: Icon(Iconsax.trash, color: Colors.white),
                      ),
                    ),
                  ],
                ).withPadding(.symmetric(horizontal: 8)),
                heightBox(10),
                TableHeaderWidget(),
                Expanded(
                  child: vm.paginatedData.isEmpty
                      ? const Center(child: Text('No complaints found'))
                      : ListView.builder(
                          padding: EdgeInsets.zero,
                          itemCount: vm.paginatedData.length,
                          itemBuilder: (context, index) {
                            final item = vm.paginatedData[index];
                            final id = item.id;
                            final isExpanded = vm.expandedRows.contains(id);
                            final isSelected = vm.selectedRows.contains(id);

                            return Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                              ),
                              decoration: BoxDecoration(
                                color: index.isOdd
                                    ? const Color(0xffF5F7FA)
                                    : Colors.white,
                                border: Border(
                                  bottom: BorderSide(color: Colors.grey[300]!),
                                ),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: 24,
                                        height: 20,
                                        child: Checkbox(
                                          activeColor: AppColors.primaryDark,
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          side: const BorderSide(width: 1),
                                          value: isSelected,
                                          onChanged: (_) =>
                                              vm.toggleRowSelection(id),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            left: 8.0,
                                          ),
                                          child: Text(
                                            item.complaintNo,
                                            style: context.bodySmall,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          item.name,
                                          style: context.bodySmall,
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child:
                                            Text(
                                                  item.status,
                                                  style: context.bodySmall,
                                                  textAlign: TextAlign.center,
                                                )
                                                .container(
                                                  padding:
                                                      const EdgeInsets.symmetric(
                                                        vertical: 4,
                                                      ),
                                                  width: 80,
                                                  decoration: BoxDecoration(
                                                    color:
                                                        AppColors.primaryLight,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          5,
                                                        ),
                                                  ),
                                                )
                                                .center(),
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
                                          onPressed: () =>
                                              vm.toggleExpandRow(id),
                                        ).align(Alignment.centerRight),
                                      ),
                                    ],
                                  ),
                                  if (isExpanded)
                                    Container(
                                      width: double.infinity,
                                      padding: const EdgeInsets.all(5),
                                      margin: const EdgeInsets.only(bottom: 8),
                                      decoration: BoxDecoration(
                                        color: Colors.grey[100],
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                          color: AppColors.primary.withAlpha(
                                            60,
                                          ),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: .spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment: .start,
                                            children: [
                                              Text(
                                                'Address',
                                                style: context.bodySmall
                                                    .copyWith(
                                                      fontWeight: .bold,
                                                    ),
                                              ),
                                              Text(
                                                item.description,
                                                style: context.bodySmall,
                                              ),
                                            ],
                                          ),

                                          Column(
                                            crossAxisAlignment: .start,
                                            children: [
                                              Text(
                                                'Date',
                                                style: context.bodySmall
                                                    .copyWith(
                                                      fontWeight: .bold,
                                                    ),
                                              ),
                                              Text(
                                                item.date.formatted,
                                                style: context.bodySmall,
                                              ),
                                            ],
                                          ),

                                          SizedBox(
                                            width: 25,
                                            child: IconButton(
                                              padding: .zero,
                                              onPressed: () {
                                                AppNavigator.pushNamed(
                                                  RouteNames.complaint_details,
                                                );
                                              },
                                              icon: Container(
                                                padding: .all(4),
                                                decoration: BoxDecoration(
                                                  color: AppColors.primaryLight,
                                                  borderRadius: .circular(5),
                                                ),
                                                child: Center(
                                                  child: Icon(
                                                    Iconsax.eye,
                                                    size: 15,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 25,
                                            child: IconButton(
                                              padding: .zero,
                                              onPressed: () {},
                                              icon: Container(
                                                padding: .all(4),
                                                decoration: BoxDecoration(
                                                  color: AppColors.errorLight,
                                                  borderRadius: .circular(5),
                                                ),
                                                child: Center(
                                                  child: Icon(
                                                    Iconsax.trash,
                                                    size: 15,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                ],
                              ),
                            );
                          },
                        ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget statusFilterDropdown(BuildContext context) {
    return Consumer<AllComplaintsViewModel>(
      builder: (context, vm, _) {
        final statuses = <String>[
          '', // ✅ All
          'Pending',
          'Processing',
          'Assigned',
          'Resolved',
        ];

        final value = statuses.contains(vm.selectedStatus)
            ? vm.selectedStatus
            : '';

        return Container(
          padding: .all(5),
          margin: .zero,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            border: Border.all(color: Colors.grey[300]!),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              isDense: true,
              isExpanded: true,
              value: value,
              icon: const Icon(Iconsax.arrow_down_1, size: 16),
              items: statuses.map((s) {
                return DropdownMenuItem<String>(
                  value: s,
                  child: Text(s.isEmpty ? 'All' : s, style: context.bodySmall),
                );
              }).toList(),
              onChanged: (s) {
                vm.filterByStatus(s ?? '');
              },
            ),
          ),
        );
      },
    );
  }
}
