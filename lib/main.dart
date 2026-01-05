import 'package:flutter/material.dart';

import 'core/app_dependencies.dart';
import 'core/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AppBindings().dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Project with provider and clean mvvm structure',
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,

      debugShowCheckedModeBanner: false,
    );
  }
}
