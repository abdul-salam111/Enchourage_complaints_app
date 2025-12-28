// lib/core/app_bindings.dart
import 'package:dio/dio.dart';
import 'package:flutter_template/core/networks/network_manager/injection_container.dart';
import 'package:get/get.dart';
import './theme/theme_controller.dart';
import 'networks/network_manager/dio_helper.dart';
import 'utils/file_picker.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<Dio>(getDio(), permanent: true);
    Get.put(DioHelper(Get.find()), permanent: true);
    Get.put(ThemeController(), permanent: true);
    Get.lazyPut(() => FilePickerController(), fenix: true);
  }
}
