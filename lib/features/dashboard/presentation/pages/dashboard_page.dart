import '../../../../app_exports.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = <_DashboardItem>[
      _DashboardItem(
        title: 'All Complaints',
        onTap: () {
          context.pushNamed(RouteNames.all_complaints);
        },
      ),
      _DashboardItem(title: 'Indoor Complaints', onTap: () {}),
      _DashboardItem(title: 'Outdoor Complaints', onTap: () {}),
      _DashboardItem(title: 'Add New Complaint', onTap: () {}),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard')),
      body: ListView.separated(
        padding: const EdgeInsets.all(14),
        itemCount: items.length,
        separatorBuilder: (_, __) => heightBox(30),
        itemBuilder: (context, index) => _DashboardTile(item: items[index]),
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
            Icon(Iconsax.sms, color: AppColors.primaryDark),
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

  const _DashboardItem({required this.title, required this.onTap});
}
