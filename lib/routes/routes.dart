import 'package:get/get.dart';
import 'route_paths.dart';
import '../features/signin/presentation/views/signin_view.dart';
import '../features/signin/presentation/views/../dependencies/signin_binding.dart';

class AppRoutes {
  static final List<GetPage> routes = [
    GetPage(
      name: RoutePaths.signin,
      page: () => const SigninView(),
      binding: SigninBinding(),
    ),
  ];

  static const String initialRoute = RoutePaths.signin;
}
