import '../../../../app_exports.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = <_DashboardItem>[
      _DashboardItem(
        title: 'All Complaints',
        onTap: () {
          AppNavigator.pushNamed(RouteNames.all_complaints);
        },
        icon:
            "https://cdn-icons-png.freepik.com/256/18594/18594936.png?semt=ais_white_label",
      ),
      _DashboardItem(
        title: 'Indoor Complaints',
        onTap: () {
          AppNavigator.pushNamed(RouteNames.indoor_complaints);
        },
        icon:
            "https://cdn-icons-png.freepik.com/256/18594/18594936.png?semt=ais_white_label",
      ),
      _DashboardItem(
        title: 'Outdoor Complaints',
        onTap: () {
          AppNavigator.pushNamed(RouteNames.outdoor_complaints);
        },
        icon:
            "https://cdn-icons-png.freepik.com/256/18594/18594936.png?semt=ais_white_label",
      ),
      _DashboardItem(
        title: 'Add New Complaint',
        onTap: () {
          AppNavigator.pushNamed(RouteNames.create_complaint);
        },
        icon: "https://www.complianceforindia.com/complaint-banner.jpg",
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        actions: [
          CircleAvatar(
                backgroundImage: CachedNetworkImageProvider(
                  "https://i.sstatic.net/l60Hf.png",
                ),
              )
              .withPadding(.only(right: 10))
              .onTap(() => AppNavigator.pushNamed(RouteNames.profile)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            heightBox(context.screenHeight * 0.05),
            Text(
              "Hi, ${SessionController.instance.user?.name ?? ""}👋",
              style: context.titleSmall.copyWith(
                color: AppColors.textSecondaryLight,
              ),
            ),
            heightBox(5),
            Text("Welcome, Back.", style: context.titleLarge),
            heightBox(context.screenHeight * 0.07),
            Expanded(
              child: ListView.separated(
                itemCount: items.length,
                separatorBuilder: (_, __) => heightBox(30),
                itemBuilder: (context, index) =>
                    _DashboardTile(item: items[index]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DashboardTile extends StatelessWidget {
  const _DashboardTile({required this.item});

  final _DashboardItem item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: item.onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        height: 80,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.primaryDark),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CachedNetworkImage(imageUrl: item.icon, height: 30, width: 30),
            Expanded(
              child: Center(
                child: Text(
                  item.title,
                  textAlign: TextAlign.center,
                  style: context.bodyLarge.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryDark,
                  ),
                ),
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
    );
  }
}

class _DashboardItem {
  final String title;
  final VoidCallback onTap;
  final String icon;

  const _DashboardItem({
    required this.title,
    required this.onTap,
    required this.icon,
  });
}
