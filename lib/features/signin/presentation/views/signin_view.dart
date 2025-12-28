import 'package:flutter/material.dart';
import 'package:flutter_template/core/core.dart';
import 'package:get/get.dart';
import '../viewmodels/signin_viewmodel.dart';

class SigninView extends GetView<SigninViewModel> {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return UnfocusWrapper(
      child: Scaffold(
        appBar: AppBar(title: const Text('Signin')),
        body: Form(
          child: Column(
            children: [
              CustomTextFormField(
                hintText: "U-Id",
                controller: controller.uidController,
              ),
              heightBox(10),
              CustomTextFormField(
                hintText: "Password",
                obscureText: true,
                controller: controller.passwordController,
              ),
              heightBox(20),
              Obx(
                () => controller.isLoading.value
                    ? const CircularProgressIndicator()
                    : ElevatedButton(
                        onPressed: () async {
                          await controller.siginUserById();
                        },
                        child: const Text('Signin'),
                      ),
              ),
            ],
          ),
        ).paddingAll(20),
      ),
    );
  }
}
