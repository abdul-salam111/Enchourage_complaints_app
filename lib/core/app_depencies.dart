import 'package:flutter_template/core/networks/network_manager/dio_helper.dart';
import 'package:get_it/get_it.dart';

import 'theme/theme_controller.dart';

final sl = GetIt.instance;

Future<void> setupLocator() async {
  sl.registerSingleton<ThemeController>(ThemeController());
  sl.registerSingleton<DioHelper>(DioHelper());
}
