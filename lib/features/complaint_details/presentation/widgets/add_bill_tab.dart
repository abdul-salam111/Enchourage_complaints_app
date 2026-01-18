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
            style: context.bodyLarge.copyWith(fontWeight: .bold),
          ),
          heightBox(10),
          Row(
            children: [
              Expanded(
                child: CustomDropdown(
                  hint: 'Select Property',
                  value: vm.selectedProperty,
                  valuesList: vm.propertiesList,
                  onChanged: (val) => vm.selectedProperty = val,
                ),
              ),
              widthBox(10),
              Expanded(
                child: CustomDropdown(
                  hint: 'Select Bill Type',
                  value: vm.selectedBillType,
                  valuesList: vm.billTypesList,
                  onChanged: (val) => vm.selectedBillType = val,
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
            keyboardType: .number,
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
              borderRadius: .circular(10),
              color: Colors.white,
              border: .all(color: AppColors.border),
            ),
            child: Center(
              child: Column(
                crossAxisAlignment: .center,
                mainAxisAlignment: .center,
                children: [
                  Icon(
                    Iconsax.camera,
                    size: 15,
                    color: AppColors.textSecondaryLight,
                  ),
                  widthBox(5),
                  Text(
                    "Upload Bill",
                    style: context.bodySmall.copyWith(
                      fontWeight: .normal,
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
            keyboardType: .text,
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
            onPressed: () {},
            text: "Submit Bill",
            radius: 7,
            fontsize: 12,
          ),

          CustomButton(
            size: Size(context.screenWidth * 0.3, 35),
            fontsize: 12,
            onPressed: () {},
            text: "Cancel",
            radius: 7,
            backgroundColor: Colors.white,
            textColor: AppColors.primaryDark,
          ),
          heightBox(20),
        ],
      ).withPadding(.all(12)),
    );
  }
}
