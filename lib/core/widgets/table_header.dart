import '../../app_exports.dart';

class TableHeaderWidget extends StatelessWidget {
  const TableHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            flex: 0,
            child: SizedBox(
              height: 24,
              width: 24,
              child: Checkbox(
                activeColor: AppColors.primaryDark,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                side: BorderSide(width: 1),
                value: true,
                onChanged: (val) {},
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              'Compt No',
              style: context.bodySmall.copyWith(fontWeight: FontWeight.bold),
            ).withMargin(.only(left: 6)),
          ),
          Expanded(
            flex: 1,
            child: Text(
              'Name',
              style: context.bodySmall.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          // Expanded(
          //   flex: 1,
          //   child: Text(
          //     'Created At',
          //     style: context.bodySmall.copyWith(fontWeight: FontWeight.bold),
          //   ).align(.center),
          // ),
          Expanded(
            flex: 1,
            child: Text(
              'Status',
              style: context.bodySmall.copyWith(fontWeight: FontWeight.bold),
            ).center(),
          ),
          Expanded(
            flex: 1,
            child: Text(
              'More',
              style: context.bodySmall.copyWith(fontWeight: FontWeight.bold),
            ).align(.centerRight).withMargin(.only(right: 8)),
          ),
        ],
      ),
    );
  }
}
