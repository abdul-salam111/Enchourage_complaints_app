import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../viewmodels/home_viewmodel.dart';

class HomeView extends GetView<HomeViewModel> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Obx(() => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (controller.isLoading.value)
              const CircularProgressIndicator()
            else
              Text('Data: ${controller.data.value}'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: controller.onButtonPressed,
              child: Text('Taps: ${controller.tapCount}'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: controller.fetchData,
              child: const Text('Fetch Data'),
            ),
          ],
        )),
      ),
    );
  }
}
