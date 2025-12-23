import 'package:get/get.dart';
import 'route_paths.dart';
import '../features/home/presentation/views/home_view.dart';
import '../features/home/presentation/views/../dependencies/home_binding.dart';

class AppRoutes {
  static final List<GetPage> routes = [
    GetPage(
      name: RoutePaths.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
  ];
  
  static const String initialRoute = RoutePaths.home;
}
