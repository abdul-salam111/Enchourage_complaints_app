import 'dart:async';
import '../../app_exports.dart';

class SplashServices {
  void isLoggedIn() {
    Future.delayed(Duration(seconds: 2), () {
      checkLoginStatus();
    });
  }

  Future<void> checkLoginStatus() async {
    try {
      await SessionController().loadUser();

      if (SessionController().isLoggedIn == true) {
        AppNavigator.goNamed(RouteNames.dashboard);
      } else {
        AppNavigator.goNamed(RouteNames.signin);
      }
    } catch (e) {
      debugPrint('Error in checkLoginStatus: $e');
    }
  }
}
