import '../../../../app_exports.dart';

class CardRow extends StatelessWidget {
  final String title;
  final String value;

  const CardRow({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: context.bodySmall.copyWith(fontWeight: FontWeight.bold),
        ),
        Text(
          value,
          style: context.bodySmall.copyWith(
            fontWeight: FontWeight.normal,
            color: AppColors.textSecondaryLight,
          ),
        ),
      ],
    );
  }
}
