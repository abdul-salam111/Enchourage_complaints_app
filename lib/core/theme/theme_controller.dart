// lib/core/theme/theme_controller.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../local_storage/storage.dart';

class ThemeController extends GetxController {
  static ThemeController get to => Get.find();

  final String _key = 'isDarkMode';

  final RxBool _isDarkMode = false.obs;
  bool get isDarkMode => _isDarkMode.value;

  ThemeMode get themeMode => isDarkMode ? ThemeMode.dark : ThemeMode.light;

  @override
  void onInit() {
    super.onInit();
    _loadTheme();
  }

  // Load saved theme preference
  Future<void> _loadTheme() async {
    final value = await storage.readValues(_key);
    _isDarkMode.value = (value == 'true');
    _updateSystemUIOverlay();
  }

  // Toggle theme
  Future<void> toggleTheme() async {
    _isDarkMode.value = !_isDarkMode.value;
    await storage.setValues(_key, _isDarkMode.value.toString());
    _updateSystemUIOverlay();
  }

  // Set a specific theme
  Future<void> setTheme(bool isDark) async {
    _isDarkMode.value = isDark;
    await storage.setValues(_key, isDark.toString());
    _updateSystemUIOverlay();
  }

  // Update system UI overlay style
  void _updateSystemUIOverlay() {
    SystemChrome.setSystemUIOverlayStyle(
      isDarkMode ? SystemUiOverlayStyle.light : SystemUiOverlayStyle.dark,
    );
  }
}
