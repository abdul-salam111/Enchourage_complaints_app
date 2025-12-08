import 'package:go_router/go_router.dart';
import 'route_paths.dart';
import 'route_names.dart';
import '../features/signin/presentation/views/signIn_view.dart';

class AppRoutes {
  static final GoRouter router = GoRouter(
    initialLocation: RoutePaths.signIn,
    routes: [
      GoRoute(
        path: RoutePaths.signIn,
        name: RouteNames.signIn,
        builder: (context, state) => SignInView(),
      ),
    ],
  );
}
