import '../../../../app_exports.dart';

class ViewBillTab extends StatelessWidget {
  const ViewBillTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Column(
        children: [
          const ViewBillTableHeader(),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 20,
              itemBuilder: (context, index) {
                return Row(children: const []);
              },
            ),
          ),
        ],
      ),
    );
  }
}
