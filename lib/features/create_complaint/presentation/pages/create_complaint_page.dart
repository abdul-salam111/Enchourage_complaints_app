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
      create: (_) => sl<CreateComplaintViewModel>(),
      child: UnfocusWrapper(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(title: const Text('Create Complaint')),
          body: Consumer<CreateComplaintViewModel>(
            builder: (context, viewModel, child) {
              return Padding(
                padding: .all(12),
                child: ListView(
                  children: [
                    heightBox(context.screenHeight * 0.01),
                    Form(
                      key: formKey,
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: RequiredDropdownSearch(
                                  label: "Block/COMM",
                                  dropdownHintText: "Select Block",
                                  items: const ["A", "B", "C", "D"],
                                  fieldHeight: 38,
                                  searchFieldHeight: 34,
                                  itemHeight: 34,
                                  onChanged: (v) {},
                                ),
                              ),
                              widthBox(10),
                              Expanded(
                                child: RequiredDropdownSearch(
                                  label: "Street/Road",
                                  dropdownHintText: "Select Stree",
                                  items: const ["10", "11", "12", "12"],
                                  fieldHeight: 38,
                                  searchFieldHeight: 34,
                                  itemHeight: 34,
                                  onChanged: (v) {},
                                ),
                              ),
                            ],
                          ),
                          heightBox(15),
                          RequiredDropdownSearch(
                            label: "Select Resident",
                            dropdownHintText: "Select Resident",
                            items: const ["10", "11", "12", "12"],
                            fieldHeight: 38,
                            searchFieldHeight: 34,
                            itemHeight: 34,
                            onChanged: (v) {},
                          ),
                          heightBox(15),
                          RequiredDropdownSearch(
                            label: "Select Complaint Type",
                            dropdownHintText: "Select Complaint Type",
                            items: const ["10", "11", "12", "12"],
                            fieldHeight: 38,
                            searchFieldHeight: 34,
                            itemHeight: 34,
                            onChanged: (v) {},
                          ),
                          heightBox(15),
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
                                    "Choose Files",
                                    style: context.bodySmall.copyWith(
                                      fontWeight: .normal,
                                      color: AppColors.textSecondaryLight,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          heightBox(20),
                          CustomButton(
                            onPressed: () {},
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
