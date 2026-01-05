import 'package:flutter_template/features/splash/splash_view.dart';
import 'package:get/get.dart';
import 'route_paths.dart';
import '../features/auth/presentation/signin/views/signin_view.dart';
import '../features/auth/presentation/signin/dependencies/signin_binding.dart';

class AppRoutes {
  static final List<GetPage> routes = [
    GetPage(
      name: RoutePaths.signin,
      page: () => const SigninView(),
      binding: SigninBinding(),
    ),
    GetPage(name: RoutePaths.splash, page: () => const SplashView()),
  ];

  static const String initialRoute = RoutePaths.splash;
}
