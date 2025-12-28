import 'package:get/get.dart';
import 'route_paths.dart';
import '../features/home/presentation/views/home_view.dart';
import '../features/home/presentation/views/../dependencies/home_binding.dart';
import '../features/signin/presentation/views/signin_view.dart';
import '../features/signin/presentation/views/../dependencies/signin_binding.dart';

class AppRoutes {
  static final List<GetPage> routes = [
    GetPage(
      name: RoutePaths.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: RoutePaths.signin,
      page: () => const SigninView(),
      binding: SigninBinding(),
    ),
  ];

  static const String initialRoute = RoutePaths.signin;
}
