import '../../app_exports.dart';

class AppNavigator {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();
  static BuildContext? get context => navigatorKey.currentContext;
}

class AppRoutes {
  static final GoRouter router = GoRouter(
    initialLocation: RoutePaths.initialRoute,
    navigatorKey: AppNavigator.navigatorKey,
    routes: [
      GoRoute(
        path: RoutePaths.signin,
        name: RouteNames.signin,
        builder: (context, state) => const SigninPage(),
      ),
    ],
  );
}

