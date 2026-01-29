import '../../../../app_exports.dart';

class AddBillTab extends StatelessWidget {
  const AddBillTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ComplaintDetailsViewModel>(
      builder: (context, vm, _) => ListView(
        children: [
          Text(
            "Enter Bill Details Here",
            style: context.bodyLarge.copyWith(fontWeight: FontWeight.bold),
          ),
          heightBox(10),
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
          CustomTextFormField(
            label: "Total Expenses",
            labelFontSize: 13,
            controller: TextEditingController(),
            hintText: '\$ Enter Amount',
            keyboardType: TextInputType.number,
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 8,
            ),
          ),
          heightBox(10),
          Container(
            width: double.infinity,
            height: context.screenHeight * 0.15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(color: AppColors.border),
            ),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Iconsax.camera,
                    size: 15,
                    color: AppColors.textSecondaryLight,
                  ),
                  heightBox(5),
                  Text(
                    "Upload Bill",
                    style: context.bodySmall.copyWith(
                      fontWeight: FontWeight.normal,
                      color: AppColors.textSecondaryLight,
                    ),
                  ),
                ],
              ),
            ),
          ),
          heightBox(10),
          CustomTextFormField(
            label: "Description",
            labelFontSize: 13,
            controller: TextEditingController(),
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
          CustomButton(
            size: Size(context.screenWidth * 0.3, 35),
            onPressed: () {
              // Access selected objects
              final property = vm.selectedPropertyObject;
              final billType = vm.selectedBillTypeObject;

              debugPrint('Selected Property: ${property?.property_id}');
              debugPrint('Selected Bill Type: ${billType?.id}');

              // TODO: Implement submit logic
            },
            text: "Submit Bill",
            radius: 7,
            fontsize: 12,
          ),
          heightBox(10),
          CustomButton(
            size: Size(context.screenWidth * 0.3, 35),
            fontsize: 12,
            onPressed: () {
              AppNavigator.pop();
            },
            text: "Cancel",
            radius: 7,
            backgroundColor: Colors.white,
            textColor: AppColors.primaryDark,
          ),
          heightBox(20),
        ],
      ).withPadding(EdgeInsets.all(12)),
    );
  }
}
