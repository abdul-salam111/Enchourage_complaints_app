import '../../../../app_exports.dart';

class ComplaintDetailsPage extends StatefulWidget {
  final int complaintId;
  const ComplaintDetailsPage({super.key, required this.complaintId});

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

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => sl<ComplaintDetailsViewModel>()
        ..fetchComplaintDetails(widget.complaintId)
        ..getMessagesList(complaintId: widget.complaintId)
        ..getEmployees(),
      child: Scaffold(
        appBar: AppBar(title: Text('ComptNo: ${widget.complaintId}')),
        body: Consumer<ComplaintDetailsViewModel>(
          builder: (context, vm, _) {
            if (vm.isLoadingComplaintDetails) {
              return const Center(child: LoadingIndicator());
            }
            return DefaultTabController(
              length: 3,
              child: NestedScrollView(
                headerSliverBuilder: (context, innerBoxIsScrolled) {
                  return [
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: .all(12),
                        child: Column(
                          crossAxisAlignment: .start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: CustomDropdown(
                                    value: vm.selectedDuration,
                                    valuesList: vm.durationDisplayTexts,
                                    onChanged: (value) {
                                      showDialog(
                                        context: context,

                                        builder: (context) {
                                          return AlertDialog(
                                            title: Text(
                                              'Confirm',
                                              style: context.bodyMedium
                                                  .copyWith(fontWeight: .bold),
                                            ),
                                            content: SizedBox(
                                              height: 100,
                                              child: Column(
                                                children: [
                                                  const Text(
                                                    'Are you sure you want to continue?',
                                                  ),
                                                  Spacer(),

                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: TextButton(
                                                          onPressed: () =>
                                                              AppNavigator.pop(),
                                                          child: const Text(
                                                            'Cancel',
                                                          ),
                                                        ),
                                                      ),
                                                      ChangeNotifierProvider.value(
                                                        value: vm,
                                                        child:
                                                            Consumer<
                                                              ComplaintDetailsViewModel
                                                            >(
                                                              builder: (context, ref, _) => Expanded(
                                                                child: CustomButton(
                                                                  isLoading: ref
                                                                      .isChangingDuration,
                                                                  size: Size(
                                                                    100,
                                                                    30,
                                                                  ),
                                                                  radius: 5,
                                                                  text: "Yes",
                                                                  fontsize: 14,
                                                                  onPressed: () async {
                                                                    ref.selectedDuration =
                                                                        value!;
                                                                    await ref.setComplaintDuration(
                                                                      complaint: ChangeDuration(
                                                                        durationKey:
                                                                            ref.selectedDurationKey,
                                                                        complaintId:
                                                                            widget.complaintId,
                                                                      ),
                                                                      context:
                                                                          context,
                                                                    );
                                                                  },
                                                                ),
                                                              ),
                                                            ),
                                                      ),
                                                    ],
                                                  ),
                                                  heightBox(10),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                                widthBox(10),
                                widthBox(10),
                                Expanded(
                                  child: CustomDropdown(
                                    // ✅ FIXED - No new Provider!
                                    value: vm
                                        .selectedStatus, // Use the existing 'vm' from parent Consumer
                                    valuesList: statuses,
                                    onChanged: (value) {
                                      if (value == "Assigned") {
                                        showDialog(
                                          context: context,
                                          builder: (dialogContext) {
                                            // ✅ Use ChangeNotifierProvider.value (not Provider.value)
                                            return ChangeNotifierProvider.value(
                                              value:
                                                  vm, // Pass the existing vm from parent
                                              child: Consumer<ComplaintDetailsViewModel>(
                                                builder: (context, vm, _) {
                                                  return AlertDialog(
                                                    title: Text(
                                                      'Confirm',
                                                      style: context.bodyMedium
                                                          .copyWith(
                                                            fontWeight: .bold,
                                                          ),
                                                    ),
                                                    content: SizedBox(
                                                      height: 140,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            .start,
                                                        children: [
                                                          const Text(
                                                            'Select Employee',
                                                          ),
                                                          CustomDropdown(
                                                            value: vm
                                                                .selectedEmployee
                                                                ?.name,
                                                            valuesList: vm
                                                                .employees
                                                                .map(
                                                                  (e) =>
                                                                      e.name!,
                                                                )
                                                                .toList(),
                                                            onChanged: (value) {
                                                              vm.selectedEmployee = vm
                                                                  .employees
                                                                  .firstWhere(
                                                                    (element) =>
                                                                        element
                                                                            .name ==
                                                                        value,
                                                                  );
                                                            },
                                                          ),
                                                          heightBox(20),
                                                          Row(
                                                            mainAxisAlignment:
                                                                .spaceBetween,
                                                            children: [
                                                              Expanded(
                                                                child: CustomButton(
                                                                  radius: 6,
                                                                  size:
                                                                      const Size(
                                                                        150,
                                                                        30,
                                                                      ),
                                                                  text: "Close",
                                                                  textColor:
                                                                      AppColors
                                                                          .primaryDark,
                                                                  fontsize: 12,
                                                                  backgroundColor:
                                                                      Colors
                                                                          .white,
                                                                  onPressed: () =>
                                                                      AppNavigator.pop(),
                                                                ),
                                                              ),
                                                              widthBox(20),
                                                              Expanded(
                                                                child: CustomButton(
                                                                  isLoading: vm
                                                                      .isChangingStatus,
                                                                  radius: 6,
                                                                  size:
                                                                      const Size(
                                                                        150,
                                                                        30,
                                                                      ),
                                                                  text:
                                                                      "Assign",
                                                                  fontsize: 12,
                                                                  onPressed: () async {
                                                                    await vm.changeComplaintStatus(
                                                                      ChangeComplaintStatus(
                                                                        status:
                                                                            "Assigned",
                                                                        assignTo: vm
                                                                            .selectedEmployee
                                                                            ?.name,
                                                                        complaintNo:
                                                                            widget.complaintId,
                                                                      ),
                                                                      context,
                                                                    );
                                                                  },
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ),
                                            );
                                          },
                                        );
                                      }
                                      if (value != "Assigned") {
                                        showDialog(
                                          context: context,
                                          builder: (dialogContext) {
                                            // ✅ Use ChangeNotifierProvider.value
                                            return ChangeNotifierProvider.value(
                                              value: vm,
                                              child: Consumer<ComplaintDetailsViewModel>(
                                                builder: (context, vm, _) {
                                                  return AlertDialog(
                                                    title: Text(
                                                      'Confirm',
                                                      style: context.bodyMedium
                                                          .copyWith(
                                                            fontWeight: .bold,
                                                          ),
                                                    ),
                                                    content: SizedBox(
                                                      height: 100,
                                                      child: Column(
                                                        children: [
                                                          const Text(
                                                            'Are you sure you want to change status?',
                                                          ),
                                                          const Spacer(),
                                                          Row(
                                                            children: [
                                                              Expanded(
                                                                child: TextButton(
                                                                  onPressed: () =>
                                                                      AppNavigator.pop(),
                                                                  child:
                                                                      const Text(
                                                                        'Cancel',
                                                                      ),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: CustomButton(
                                                                  isLoading: vm
                                                                      .isChangingStatus,
                                                                  size:
                                                                      const Size(
                                                                        100,
                                                                        30,
                                                                      ),
                                                                  radius: 5,
                                                                  text: "Yes",
                                                                  fontsize: 14,
                                                                  onPressed: () async {
                                                                    await vm.changeComplaintStatus(
                                                                      ChangeComplaintStatus(
                                                                        complaintNo:
                                                                            widget.complaintId,
                                                                        status:
                                                                            value,
                                                                      ),
                                                                      context,
                                                                    );
                                                                  },
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          heightBox(10),
                                                        ],
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ),
                                            );
                                          },
                                        );
                                      }
                                    },
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
                                    value:
                                        '${vm.complaintDetails?.data?.complaintNo}',
                                  ),
                                  heightBox(10),
                                  CardRow(
                                    title: 'Member Name:',
                                    value:
                                        '${vm.complaintDetails?.data?.memberName}',
                                  ),
                                  heightBox(10),
                                  CardRow(
                                    title: 'Phone No:',
                                    value:
                                        '${vm.complaintDetails?.data?.phone}',
                                  ),
                                  heightBox(10),
                                  CardRow(
                                    title: 'Address:',
                                    value:
                                        '${vm.complaintDetails?.data?.address}',
                                  ),
                                  heightBox(10),
                                  CardRow(
                                    title: 'Title:',
                                    value:
                                        '${vm.complaintDetails?.data?.title}',
                                  ),
                                  heightBox(10),
                                  CardRow(
                                    title: 'Date:',
                                    value: '${vm.complaintDetails?.data?.date}',
                                  ),
                                  heightBox(10),
                                  CardRow(
                                    title: 'Assign By:',
                                    value:
                                        '${vm.complaintDetails?.data?.assignBy}',
                                  ),
                                  heightBox(10),
                                  CardRow(
                                    title: 'Assign To:',
                                    value:
                                        '${vm.complaintDetails?.data?.assignTo}',
                                  ),
                                  heightBox(10),

                                  Text(
                                    "Description:",
                                    style: context.bodySmall.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "${vm.complaintDetails?.data?.description}",
                                    style: context.bodySmall.copyWith(
                                      fontWeight: FontWeight.normal,
                                      color: AppColors.textSecondaryLight,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            heightBox(10),

                            vm.complaintDetails!.data!.attachments!.isNotEmpty
                                ? Align(
                                    alignment: Alignment.centerLeft,
                                    child: InkWell(
                                      onTap: () {
                                        _showAttachmentsDialog(
                                          context,
                                          vm
                                                  .complaintDetails
                                                  ?.data
                                                  ?.attachments ??
                                              [],
                                        );
                                      },
                                      borderRadius: BorderRadius.circular(10),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 12,
                                          vertical: 10,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                          border: Border.all(
                                            color: AppColors.grey200,
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Icon(
                                              Icons.attachment,
                                              color: AppColors.primaryDark,
                                              size: 18,
                                            ),
                                            widthBox(8),
                                            Text(
                                              "View Attachments",
                                              style: context.bodySmall.copyWith(
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                : Text("No Attachements"),
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
                body: TabBarView(
                  children: [
                    MessagesTab(complaintId: widget.complaintId),
                    ViewBillTab(),
                    AddBillTab(),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

void _showAttachmentsDialog(BuildContext context, List<String> imageUrls) {
  if (imageUrls.isEmpty) return;

  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (ctx) {
      int currentIndex = 0;
      final pageController = PageController();

      return StatefulBuilder(
        builder: (ctx, setState) {
          return Dialog(
            insetPadding: const EdgeInsets.all(12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            child: Container(
              height: MediaQuery.of(ctx).size.height * 0.6,
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  // Header
                  Row(
                    children: [
                      Text(
                        "Attachments",
                        style: Theme.of(ctx).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "${currentIndex + 1}/${imageUrls.length}",
                        style: Theme.of(ctx).textTheme.bodySmall,
                      ),
                      IconButton(
                        onPressed: () => Navigator.pop(ctx),
                        icon: const Icon(Icons.close),
                      ),
                    ],
                  ),

                  const SizedBox(height: 8),

                  // Viewer
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: PageView.builder(
                        controller: pageController,
                        itemCount: imageUrls.length,
                        onPageChanged: (i) => setState(() => currentIndex = i),
                        itemBuilder: (ctx, i) {
                          return InteractiveViewer(
                            minScale: 1,
                            maxScale: 4,
                            child: CachedNetworkImage(
                              imageUrl: imageUrls[i],
                              fit: BoxFit.cover,
                              placeholder: (context, url) => const Center(
                                child: CircularProgressIndicator(),
                              ),
                              errorWidget: (context, url, error) =>
                                  const Center(
                                    child: Icon(Icons.broken_image, size: 40),
                                  ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  // Thumbnails
                  SizedBox(
                    height: 64,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: imageUrls.length,
                      separatorBuilder: (_, __) => const SizedBox(width: 8),
                      itemBuilder: (ctx, i) {
                        final isSelected = i == currentIndex;
                        return InkWell(
                          onTap: () {
                            pageController.animateToPage(
                              i,
                              duration: const Duration(milliseconds: 250),
                              curve: Curves.easeOut,
                            );
                            setState(() => currentIndex = i);
                          },
                          child: Container(
                            width: 64,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: isSelected
                                    ? AppColors.primaryDark
                                    : AppColors.grey200,
                                width: isSelected ? 2 : 1,
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(9),
                              child: CachedNetworkImage(
                                imageUrl: imageUrls[i],
                                fit: BoxFit.cover,
                                errorWidget: (_, __, ___) =>
                                    const Icon(Icons.broken_image),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    },
  );
}
