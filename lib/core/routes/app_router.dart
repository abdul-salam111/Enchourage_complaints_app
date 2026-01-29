import '../../app_exports.dart';

class AppNavigator {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  // Safe navigation methods
  static void goNamed(String name, {Object? extra}) {
    final context = navigatorKey.currentContext;
    if (context != null) {
      context.goNamed(name, extra: extra);
    }
  }

  static void pushNamed(String name, {Object? extra}) {
    final context = navigatorKey.currentContext;
    if (context != null) {
      context.pushNamed(name, extra: extra);
    }
  }

  static void replaceTo(String name, {Object? extra}) {
    final context = navigatorKey.currentContext;
    if (context != null) {
      context.replaceNamed(name, extra: extra);
    }
  }

  static void pop() {
    final context = navigatorKey.currentContext;
    if (context != null && context.canPop()) {
      context.pop();
    }
  }
}

class AppRoutes {
  static final GoRouter router = GoRouter(
    initialLocation: RoutePaths.splash,
    navigatorKey: AppNavigator.navigatorKey,
    routes: [
      GoRoute(
        path: RoutePaths.signin,
        name: RouteNames.signin,
        builder: (context, state) => const SigninPage(),
      ),
      GoRoute(
        path: RoutePaths.splash,
        name: RouteNames.splash,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: RoutePaths.dashboard,
        name: RouteNames.dashboard,
        builder: (context, state) => const DashboardPage(),
      ),
      GoRoute(
        path: RoutePaths.all_complaints,
        name: RouteNames.all_complaints,
        builder: (context, state) => const AllComplaintsPage(),
      ),
      GoRoute(
        path: RoutePaths.complaint_details,
        name: RouteNames.complaint_details,
        builder: (context, state) {
          final id = state.extra as int;
          return ComplaintDetailsPage(complaintId: id);
        },
      ),
      GoRoute(
        path: RoutePaths.indoor_complaints,
        name: RouteNames.indoor_complaints,
        builder: (context, state) => const IndoorComplaintsPage(),
      ),
      GoRoute(
        path: RoutePaths.outdoor_complaints,
        name: RouteNames.outdoor_complaints,
        builder: (context, state) => const OutdoorComplaintsPage(),
      ),
      GoRoute(
        path: RoutePaths.create_complaint,
        name: RouteNames.create_complaint,
        builder: (context, state) => const CreateComplaintPage(),
      ),
      GoRoute(
        path: RoutePaths.profile,
        name: RouteNames.profile,
        builder: (context, state) => const ProfileView(),
      ),
      GoRoute(
        path: RoutePaths.viewcomplaintbill,
        name: RouteNames.viewcomplaintbill,
        builder: (context, state) {
          return ViewComplaintsBill(
            complaintBills: state.extra as ComplaintBills,
          );
        },
      ),
    ],
  );
}
