import 'package:enchourage_app/app_exports.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile"), centerTitle: true),
      body: Column(
        crossAxisAlignment: .center,
        children: [
          heightBox(10),
          Center(
            child: CircleAvatar(
              radius: 51,
              backgroundColor: AppColors.primaryDark,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: CachedNetworkImageProvider(
                  "https://i.sstatic.net/l60Hf.png",
                ),
              ),
            ),
          ),
          heightBox(10),
          Text(
            SessionController.instance.user?.name.toString() ?? "",
            style: context.titleSmall,
          ),

          Text(
            SessionController.instance.user?.email.toString() ?? "",
            style: context.bodySmall,
          ),
          heightBox(context.screenHeight * 0.05),
          CustomTextFormField(
            readOnly: true,
            label: "Name",
            prefixIcon: Iconsax.user,
            labelFontSize: 13,
            controller: TextEditingController(
              text: SessionController.instance.user?.name,
            ),
          ),

          heightBox(20),
          CustomTextFormField(
            readOnly: true,
            label: "Email",
            prefixIcon: Iconsax.sms,
            labelFontSize: 13,
            controller: TextEditingController(
              text: SessionController.instance.user?.email,
            ),
          ),
          Spacer(),
          CustomButton(
            text: "Logout",
            onPressed: () {},
            radius: 10,
            icon: Iconsax.logout,
          ),
          heightBox(20),
        ],
      ).withPadding(.all(12)),
    );
  }
}
