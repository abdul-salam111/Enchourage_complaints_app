import '../../../../app_exports.dart';

class ViewBillTab extends StatelessWidget {
  const ViewBillTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            padding: .all(10),
            decoration: BoxDecoration(
              color: Color(0xffF5F7FA),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5),
              ),
            ),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              crossAxisAlignment: .center,
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    'Billing Type',
                    style: context.bodySmall.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ).align(.centerLeft),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    'Amount',
                    style: context.bodySmall.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ).center(),
                ),

                Expanded(
                  flex: 1,
                  child: Text(
                    'Created At',
                    style: context.bodySmall.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ).align(.centerRight),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
