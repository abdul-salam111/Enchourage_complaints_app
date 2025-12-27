// lib/core/app_bindings.dart
import 'package:get/get.dart';
import './theme/theme_controller.dart';
import 'networks/network_manager/dio_helper.dart';
import 'utils/file_picker.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    // Register services
    Get.put(DioHelper(), permanent: true);
    Get.put(ThemeController(), permanent: true);
    Get.lazyPut(() => FilePickerController(), fenix: true);
  }
}
