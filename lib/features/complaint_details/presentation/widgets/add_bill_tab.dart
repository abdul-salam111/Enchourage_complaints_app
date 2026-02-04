import '../../../../app_exports.dart';

class AddBillTab extends StatefulWidget {
  const AddBillTab({super.key});

  @override
  State<AddBillTab> createState() => _AddBillTabState();
}

class _AddBillTabState extends State<AddBillTab> {
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Listen to changes in the view model to pre-fill form when editing
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final vm = context.read<ComplaintDetailsViewModel>();
      if (vm.isEditMode && vm.editingBill != null) {
        _populateFormForEdit(vm.editingBill!);
      }
    });
  }

  void _populateFormForEdit(ComplaintBills bill) {
    _amountController.text = bill.amount?.toString() ?? '';
    _descriptionController.text = bill.description ?? '';
  }

  @override
  void dispose() {
    _amountController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ImagePickerProvider())],
      child: Consumer2<ComplaintDetailsViewModel, ImagePickerProvider>(
        builder: (context, vm, imageProvider, _) {
          // Auto-populate when switching to edit mode
          if (vm.isEditMode &&
              vm.editingBill != null &&
              _amountController.text.isEmpty) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              _populateFormForEdit(vm.editingBill!);
            });
          }

          return ListView(
            children: [
              // Header showing if we're in edit mode
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    vm.isEditMode
                        ? "Edit Bill Details"
                        : "Enter Bill Details Here",
                    style: context.bodyLarge.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  if (vm.isEditMode)
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.warningDark.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: AppColors.warningDark),
                      ),
                      child: Text(
                        "EDIT MODE",
                        style: context.bodySmall.copyWith(
                          color: AppColors.warningDark,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                ],
              ),
              heightBox(10),

              // Property & Bill Type Dropdowns
              Row(
                children: [
                  Expanded(
                    child: CustomDropdown(
                      hint: 'Select Property',
                      value: vm.selectedProperty,
                      valuesList: vm.propertiesList,
                      onChanged: (val) {
                        vm.selectedProperty = val;
                      },
                    ),
                  ),
                  widthBox(10),
                  Expanded(
                    child: CustomDropdown(
                      hint: 'Select Bill Type',
                      value: vm.selectedBillType,
                      valuesList: vm.billTypesDisplayList,
                      onChanged: (val) {
                        vm.selectedBillType = val;
                      },
                    ),
                  ),
                ],
              ),
              heightBox(10),

              // Amount Field
              CustomTextFormField(
                label: "Total Expenses",
                labelFontSize: 13,
                controller: _amountController,
                hintText: '\$ Enter Amount',
                keyboardType: TextInputType.number,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 8,
                ),
              ),
              heightBox(10),

              // Upload Bill Container
              InkWell(
                onTap: () async {
                  await imageProvider.showImageSourceDialog(
                    context,
                    allowMultiple: true,
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: context.screenHeight * 0.15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(
                      color: imageProvider.selectedImages.isEmpty
                          ? AppColors.border
                          : AppColors.primaryDark,
                      width: imageProvider.selectedImages.isEmpty ? 1 : 2,
                    ),
                  ),
                  child: imageProvider.selectedImages.isEmpty
                      ? Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Iconsax.camera,
                                size: 25,
                                color: AppColors.textSecondaryLight,
                              ),
                              heightBox(5),
                              Text(
                                vm.isEditMode
                                    ? "Upload New Receipts (Optional)"
                                    : "Upload Bill",
                                style: context.bodySmall.copyWith(
                                  fontWeight: FontWeight.normal,
                                  color: AppColors.textSecondaryLight,
                                ),
                              ),
                              if (vm.isEditMode &&
                                  vm.editingBill?.receipts != null)
                                Text(
                                  "${vm.editingBill!.receipts!.length} existing receipt(s)",
                                  style: context.bodySmall.copyWith(
                                    fontSize: 10,
                                    color: AppColors.textSecondaryLight,
                                  ),
                                ),
                            ],
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: .start,
                            children: [
                              Row(
                                mainAxisAlignment: .spaceBetween,
                                children: [
                                  Text(
                                    "${imageProvider.selectedImages.length} file(s) selected",
                                    style: context.bodySmall.copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.primaryDark,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      imageProvider.showImageSourceDialog(
                                        context,
                                        allowMultiple: true,
                                      );
                                    },
                                    icon: Icon(
                                      Icons.add_circle,
                                      color: AppColors.primaryDark,
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount:
                                      imageProvider.selectedImages.length,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.only(right: 8),
                                      child: Stack(
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                              8,
                                            ),
                                            child: Image.file(
                                              imageProvider
                                                  .selectedImages[index],
                                              height: 80,
                                              width: 80,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Positioned(
                                            top: -5,
                                            right: -5,
                                            child: IconButton(
                                              onPressed: () {
                                                imageProvider.removeImage(
                                                  index,
                                                );
                                              },
                                              icon: Container(
                                                padding: const EdgeInsets.all(
                                                  2,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: Colors.red,
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Icon(
                                                  Icons.close,
                                                  size: 16,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                ),
              ),
              heightBox(10),

              // Description Field
              CustomTextFormField(
                label: "Description (Optional)",
                labelFontSize: 13,
                controller: _descriptionController,
                hintText: 'Enter Description',
                keyboardType: TextInputType.text,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 8,
                ),
                maxLines: 4,
              ),
              heightBox(20),

              // Submit Button
              CustomButton(
                size: Size(context.screenWidth * 0.3, 35),
                isLoading: vm.isAddingBill,
                onPressed: () async {
                  final amount = double.tryParse(_amountController.text.trim());

                  if (amount == null || amount <= 0) {
                    AppToastsUtils.showError(
                      context,
                      "Please enter valid amount",
                    );
                    return;
                  }

                  if (vm.isEditMode) {
                    // Update existing bill
                    await vm.updateComplaintBill(
                      context: context,
                      complaintNo: vm.complaintDetails!.data!.complaintNo!,
                      amount: amount,
                      description: _descriptionController.text.trim().isEmpty
                          ? null
                          : _descriptionController.text.trim(),
                      receipts: imageProvider.selectedImages,
                    );
                  } else {
                    // Create new bill
                    await vm.addComplaintBill(
                      context: context,
                      complaintNo: vm.complaintDetails!.data!.complaintNo!,
                      amount: amount,
                      description: _descriptionController.text.trim().isEmpty
                          ? null
                          : _descriptionController.text.trim(),
                      receipts: imageProvider.selectedImages,
                    );
                  }

                  // Clear form on success
                  if (!vm.isAddingBill) {
                    _amountController.clear();
                    _descriptionController.clear();
                    imageProvider.clearImages();
                  }
                },
                text: vm.isEditMode ? "Update Bill" : "Submit Bill",
                radius: 7,
                fontsize: 12,
              ),
              heightBox(10),

              // Cancel/Clear Button
              CustomButton(
                size: Size(context.screenWidth * 0.3, 35),
                fontsize: 12,
                onPressed: () {
                  _amountController.clear();
                  _descriptionController.clear();
                  imageProvider.clearImages();
                  vm.clearEditingBill();
                },
                text: vm.isEditMode ? "Cancel Edit" : "Clear Form",
                radius: 7,
                backgroundColor: Colors.white,
                textColor: AppColors.primaryDark,
              ),
              heightBox(20),
            ],
          ).withPadding(EdgeInsets.all(12));
        },
      ),
    );
  }
}
