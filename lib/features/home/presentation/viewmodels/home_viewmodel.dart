import 'package:get/get.dart';
import '../../domain/repositories/home_repository.dart';

class HomeViewModel extends GetxController {
  final IHomeRepository repository;
  
  HomeViewModel({required this.repository});
  
  final tapCount = 0.obs;
  final RxString data = ''.obs;
  final RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  void onButtonPressed() {
    tapCount.value++;
  }
  
  Future<void> fetchData() async {
    try {
      isLoading.value = true;
      data.value = await repository.getData();
    } catch (e) {
      Get.snackbar(
        'Error', 
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLoading.value = false;
    }
  }
  
  @override
  void onClose() {
    // Clean up resources
    super.onClose();
  }
}
