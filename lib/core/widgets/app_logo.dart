
import 'package:flutter/material.dart';
import '../res/images.dart';

class AppLogo extends StatelessWidget {
  final double radius;

  const AppLogo({super.key, this.radius = 30});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: AssetImage(AppImages.appLogo),
    );
  }
}
