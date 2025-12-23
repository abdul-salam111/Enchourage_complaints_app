import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/app_dependencies.dart';
import 'core/theme/theme.dart';
import 'core/theme/theme_controller.dart';
import 'routes/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AppBindings().dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GetMaterialApp(
        title: 'Flutter Project with mvvm structure',
        theme: AppThemes.lightTheme,
        darkTheme: AppThemes.darkTheme,
        themeMode: ThemeController.to.themeMode,
        debugShowCheckedModeBanner: false,
        initialRoute: AppRoutes.initialRoute,
        getPages: AppRoutes.routes,
      ),
    );
  }
}
