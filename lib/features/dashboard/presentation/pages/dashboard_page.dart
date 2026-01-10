import '../../../../app_exports.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard')),
      body: ListView(
        padding: .all(14),
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              padding: .all(8),
              height: 80,
              decoration: BoxDecoration(
                border: .all(color: AppColors.primaryDark),
                borderRadius: .circular(10),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Icon(Iconsax.sms, color: AppColors.primaryDark),
                    Text(
                      "All Complaints",
                      style: context.bodyLarge.copyWith(
                        fontWeight: .bold,
                        color: AppColors.primaryDark,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                      color: AppColors.primaryDark,
                    ),
                  ],
                ),
              ),
            ),
          ),
          heightBox(30),
          InkWell(
            onTap: () {},
            child: Container(
              padding: .all(8),
              height: 80,
              decoration: BoxDecoration(
                border: .all(color: AppColors.primaryDark),
                borderRadius: .circular(10),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Icon(Iconsax.sms, color: AppColors.primaryDark),
                    Text(
                      "Indoor Complaints",
                      style: context.bodyLarge.copyWith(
                        fontWeight: .bold,
                        color: AppColors.primaryDark,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                      color: AppColors.primaryDark,
                    ),
                  ],
                ),
              ),
            ),
          ),
          heightBox(30),
          InkWell(
            onTap: () {},
            child: Container(
              padding: .all(8),
              height: 80,
              decoration: BoxDecoration(
                border: .all(color: AppColors.primaryDark),
                borderRadius: .circular(10),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Icon(Iconsax.sms, color: AppColors.primaryDark),
                    Text(
                      "Outdoor Complaints",
                      style: context.bodyLarge.copyWith(
                        fontWeight: .bold,
                        color: AppColors.primaryDark,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                      color: AppColors.primaryDark,
                    ),
                  ],
                ),
              ),
            ),
          ),
          heightBox(30),
          InkWell(
            onTap: () {},
            child: Container(
              padding: .all(8),
              height: 80,
              decoration: BoxDecoration(
                border: .all(color: AppColors.primaryDark),
                borderRadius: .circular(10),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Icon(Iconsax.sms, color: AppColors.primaryDark),
                    Text(
                      "Add New Complaint",
                      style: context.bodyLarge.copyWith(
                        fontWeight: .bold,
                        color: AppColors.primaryDark,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                      color: AppColors.primaryDark,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
