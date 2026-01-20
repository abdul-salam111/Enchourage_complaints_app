import '../../../../app_exports.dart';

class CreateComplaintPage extends StatefulWidget {
  const CreateComplaintPage({super.key});

  @override
  State<CreateComplaintPage> createState() => _CreateComplaintPageState();
}

class _CreateComplaintPageState extends State<CreateComplaintPage> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => sl<CreateComplaintViewModel>()..getBlockList(),
      child: UnfocusWrapper(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(title: const Text('Create Complaint')),
          body: Consumer<CreateComplaintViewModel>(
            builder: (context, viewModel, child) {
              return Padding(
                padding: const EdgeInsets.all(12),
                child: ListView(
                  children: [
                    heightBox(context.screenHeight * 0.01),
                    Form(
                      key: formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // =========================
                          // Block + Street Row
                          // =========================
                          Row(
                            children: [
                              Expanded(
                                child: RequiredDropdownSearch<Blocks>(
                                  label: "Block/COMM",
                                  dropdownHintText: viewModel.isBlockLoading
                                      ? "Loading..."
                                      : "Select Block",
                                  items: viewModel.blockList?.data ?? [],
                                  selectedItem: viewModel.selectedBlock,
                                  itemAsString: (e) => e.title ?? "",
                                  compareFn: (a, b) => a.id == b.id,
                                  isLoading: viewModel.isBlockLoading,
                                  onChanged: (block) async {
                                    // ✅ Block select -> streets load
                                    await viewModel.selectBlock(block);
                                  },
                                ),
                              ),
                              widthBox(10),
                              Expanded(
                                child: RequiredDropdownSearch<Street>(
                                  label: "Street/Road",
                                  dropdownHintText: viewModel.isStreetLoading
                                      ? "Loading..."
                                      : "Select Street",
                                  items: viewModel.streetList?.data ?? [],
                                  selectedItem: viewModel.selectedStreet,
                                  itemAsString: (e) => e.title ?? "",
                                  compareFn: (a, b) => a.id == b.id,
                                  isLoading: viewModel.isStreetLoading,
                                  onChanged: (street) {
                                    viewModel.selectStreet(street);
                                  },
                                ),
                              ),
                            ],
                          ),
                          heightBox(15),
                          RequiredDropdownSearch<Plot>(
                            label: "House No.",
                            dropdownHintText: viewModel.isPlotLoading
                                ? "Loading..."
                                : "Select Plot",
                            items: viewModel.plotList?.data ?? [],
                            selectedItem: viewModel.selectedPlot,
                            itemAsString: (e) => e.plotNo ?? "",
                            compareFn: (a, b) => a.id == b.id,
                            isLoading: viewModel.isPlotLoading,
                            onChanged: (plot) {
                              viewModel.selectPlot(plot);
                            },
                          ),
                          heightBox(15),

                          // =========================
                          // Description
                          // =========================
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Description",
                                  style: DefaultTextStyle.of(context).style
                                      .copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          heightBox(5),
                          TextFormField(
                            style: context.bodyMedium.copyWith(
                              color: AppColors.textSecondaryLight,
                            ),
                            cursorHeight: 16,
                            maxLines: 4,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              hintText: "Description...",
                              hintStyle: context.bodyMedium.copyWith(
                                color: AppColors.textSecondaryLight,
                              ),
                            ),
                          ),

                          heightBox(15),

                          // =========================
                          // Files
                          // =========================
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Select Files",
                                  style: DefaultTextStyle.of(context).style
                                      .copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          heightBox(5),
                          Container(
                            width: double.infinity,
                            height: context.screenHeight * 0.2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              border: Border.all(color: AppColors.border),
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Iconsax.camera,
                                    size: 15,
                                    color: AppColors.textSecondaryLight,
                                  ),
                                  heightBox(5),
                                  Text(
                                    "Choose Files",
                                    style: context.bodySmall.copyWith(
                                      fontWeight: FontWeight.normal,
                                      color: AppColors.textSecondaryLight,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          heightBox(20),

                          // =========================
                          // Submit
                          // =========================
                          CustomButton(
                            onPressed: () {
                              // ✅ ids ready for API
                              debugPrint(
                                "Block ID: ${viewModel.selectedBlockId}",
                              );
                              debugPrint(
                                "Street ID: ${viewModel.selectedStreetId}",
                              );
                            },
                            text: "Submit",
                            radius: 7,
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
      ),
    );
  }
}
