import '../../app_exports.dart';

class AppLogo extends StatelessWidget {
  final double height;
  final double width;
  final bool isSplash;

  const AppLogo({
    super.key,
    this.height = 100,
    this.width = 100,
    this.isSplash = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(isSplash ? AppImages.splashlogo : AppImages.logo),
        ),
      ),
    );
  }
}
