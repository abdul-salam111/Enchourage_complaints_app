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
        child: Obx(
          () => controller.isLoading.value
              ? Center(child: const CircularProgressIndicator())
              : ListView.builder(
                  itemBuilder: (context, index) =>
                      Text(controller.getUserList[index].name),
                  itemCount: controller.getUserList.length,
                ),
        ),
      ),
    );
  }
}
