import 'app_exports.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Enchourage Complaints App',
      routerConfig: AppRoutes.router,
      theme: AppThemes.lightTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}
