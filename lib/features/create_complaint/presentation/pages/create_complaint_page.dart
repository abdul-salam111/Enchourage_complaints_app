import 'package:dropdown_search/dropdown_search.dart';

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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => sl<CreateComplaintViewModel>()
            ..getBlockList()
            ..getComplaintTypesList(),
        ),
        ChangeNotifierProvider(create: (_) => ImagePickerProvider()),
      ],
      child: UnfocusWrapper(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(title: const Text('Create Complaint')),
          body: Consumer2<CreateComplaintViewModel, ImagePickerProvider>(
            builder: (context, viewModel, imageProvider, child) {
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
                                  itemAsString: (e) => e.blockName ?? "",
                                  compareFn: (a, b) => a.id == b.id,
                                  isLoading: viewModel.isBlockLoading,
                                  onChanged: (block) async {
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
                                  itemAsString: (e) => e.streetNo ?? "",
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
                          Row(
                            children: [
                              Expanded(
                                child: RequiredDropdownSearch<Plot>(
                                  label: "House/Plot No",
                                  dropdownHintText: viewModel.isPlotLoading
                                      ? "Loading..."
                                      : "Select House",
                                  items: viewModel.plotList?.data ?? [],
                                  selectedItem: viewModel.selectedPlot,
                                  itemAsString: (e) => e.plotNo ?? "",
                                  compareFn: (a, b) => a.id == b.id,
                                  isLoading: viewModel.isPlotLoading,
                                  onChanged: (plot) {
                                    viewModel.selectPlot(plot);
                                  },
                                ),
                              ),

                              widthBox(10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "Resident Owner",
                                            style: DefaultTextStyle.of(context)
                                                .style
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
                                      height: 40,
                                      padding: EdgeInsets.only(left: 10),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: AppColors.border,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: viewModel.isResidentLoading
                                          ? Text(
                                              "Loading...",
                                              style: context.bodySmall.copyWith(
                                                color: AppColors
                                                    .textSecondaryLight,
                                              ),
                                            ).align(Alignment.centerLeft)
                                          : Text(
                                              viewModel.residentOwnerName,
                                              style: context.bodySmall.copyWith(
                                                color: AppColors
                                                    .textSecondaryLight,
                                              ),
                                            ).align(Alignment.centerLeft),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          heightBox(15),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Select Complaint Type",
                                      style: DefaultTextStyle.of(context).style
                                          .copyWith(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                          ),
                                    ),
                                    TextSpan(
                                      text: " *",
                                      style: DefaultTextStyle.of(context).style
                                          .copyWith(
                                            color: AppColors.errorLight,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              heightBox(5),
                              SizedBox(
                                height: 40,
                                child: DropdownSearch<FindDepartment>(
                                  selectedItem: viewModel.selectedComplaintType,
                                  compareFn: (a, b) => a.id == b.id,
                                  items:
                                      (
                                        String filter,
                                        LoadProps? loadProps,
                                      ) async {
                                        return viewModel
                                            .flattenedComplaintTypes;
                                      },
                                  itemAsString: (item) => item.title ?? "",

                                  dropdownBuilder: (context, selected) => Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      selected?.title ?? "",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: context.bodySmall.copyWith(
                                        color: AppColors.textSecondaryLight,
                                      ),
                                    ),
                                  ),

                                  popupProps: PopupProps.menu(
                                    showSearchBox: true,
                                    searchDelay: Duration.zero,
                                    menuProps: MenuProps(
                                      backgroundColor: Colors.white,
                                      margin: EdgeInsets.zero,
                                    ),
                                    itemBuilder:
                                        (
                                          context,
                                          item,
                                          isDisabled,
                                          isSelected,
                                        ) {
                                          final parentCategory = viewModel
                                              .getParentCategoryName(item);

                                          return Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              if (_isFirstInCategory(
                                                viewModel,
                                                item,
                                              ))
                                                Container(
                                                  width: double.infinity,
                                                  padding:
                                                      const EdgeInsets.symmetric(
                                                        horizontal: 12,
                                                        vertical: 8,
                                                      ),
                                                  color: AppColors.border,

                                                  child: Text(
                                                    parentCategory ?? "",
                                                    style: context.bodySmall
                                                        .copyWith(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: AppColors
                                                              .textSecondaryLight,
                                                        ),
                                                  ),
                                                ),

                                              Container(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                      horizontal: 24,
                                                      vertical: 12,
                                                    ),

                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        item.title ?? "",
                                                        style: context.bodySmall
                                                            .copyWith(
                                                              color: AppColors
                                                                  .textSecondaryLight,
                                                            ),
                                                        maxLines: 2,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                    searchFieldProps: TextFieldProps(
                                      cursorHeight: 16,
                                      style: context.bodySmall,
                                      decoration: InputDecoration(
                                        constraints: BoxConstraints.tightFor(
                                          height: 45,
                                        ),
                                        isDense: true,
                                        contentPadding: const EdgeInsets.only(
                                          top: 12,
                                          bottom: 5,
                                          left: 12,
                                        ),
                                        hintText: "Search complaint type...",
                                        hintStyle: context.bodySmall.copyWith(
                                          color: AppColors.textSecondaryLight,
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                      ),
                                    ),
                                  ),

                                  decoratorProps: DropDownDecoratorProps(
                                    decoration: InputDecoration(
                                      isDense: true,
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                            horizontal: 12,
                                            vertical: 10,
                                          ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      hintText: "Select Complaint Type",
                                      hintStyle: context.bodySmall.copyWith(
                                        color: AppColors.textSecondaryLight,
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide(
                                          color: AppColors.border,
                                        ),
                                      ),
                                    ),
                                  ),

                                  onChanged: viewModel.isComplaintTypesLoading
                                      ? null
                                      : (department) {
                                          viewModel.selectComplaintType(
                                            department,
                                          );
                                        },
                                ),
                              ),
                            ],
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
                            controller: viewModel.descriptionController,
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
                          GestureDetector(
                            onTap: () {
                              ImagePickerHelper.showImagePicker(
                                context,
                                allowMultiple: true,
                              );
                            },
                            child: Container(
                              width: double.infinity,
                              height: context.screenHeight * 0.2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                border: Border.all(color: AppColors.border),
                              ),
                              child: imageProvider.selectedImages.isEmpty
                                  ? Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Iconsax.camera,
                                            size: 40,
                                            color: AppColors.textSecondaryLight,
                                          ),
                                          heightBox(10),
                                          Text(
                                            "Choose Files",
                                            style: context.bodySmall.copyWith(
                                              fontWeight: FontWeight.normal,
                                              color:
                                                  AppColors.textSecondaryLight,
                                            ),
                                          ),
                                          heightBox(5),
                                          Text(
                                            "Tap to add images",
                                            style: context.bodySmall.copyWith(
                                              fontSize: 10,
                                              color:
                                                  AppColors.textSecondaryLight,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  : Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: GridView.builder(
                                        gridDelegate:
                                            const SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 3,
                                              crossAxisSpacing: 8,
                                              mainAxisSpacing: 8,
                                            ),
                                        itemCount:
                                            imageProvider.selectedImages.length,
                                        itemBuilder: (context, index) {
                                          return Stack(
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                child: Image.file(
                                                  imageProvider
                                                      .selectedImages[index],
                                                  fit: BoxFit.cover,
                                                  width: double.infinity,
                                                  height: double.infinity,
                                                ),
                                              ),
                                              Positioned(
                                                top: 4,
                                                right: 4,
                                                child: GestureDetector(
                                                  onTap: () {
                                                    imageProvider.removeImage(
                                                      index,
                                                    );
                                                  },
                                                  child: Container(
                                                    padding:
                                                        const EdgeInsets.all(4),
                                                    decoration: BoxDecoration(
                                                      color: Colors.red,
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: const Icon(
                                                      Icons.close,
                                                      size: 16,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      ),
                                    ),
                            ),
                          ),

                          heightBox(20),

                          // =========================
                          // Submit
                          // =========================
                          CustomButton(
                            isLoading: viewModel.isSubmitting,
                            onPressed: () async {
                              await viewModel.submitComplaint(
                                imageProvider.selectedImages,
                              );
                              imageProvider.clearImages();
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

  bool _isFirstInCategory(
    CreateComplaintViewModel viewModel,
    FindDepartment item,
  ) {
    if (viewModel.complaintTypesList?.data == null) return false;

    for (var type in viewModel.complaintTypesList!.data!) {
      if (type.findDepartments?.isNotEmpty ?? false) {
        if (type.findDepartments!.first.id == item.id) {
          return true;
        }
      }
    }
    return false;
  }
}
