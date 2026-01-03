import 'package:flutter/material.dart';
import '../../../../app_exports.dart';

class SigninView extends GetView<SigninViewModel> {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sign In')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            CustomTextFormField(
              label: "Email",
              hintText: "Enter your email",
              controller: controller.emailController,
            ),
            const SizedBox(height: 20),
            CustomTextFormField(
              controller: controller.passwordController,
              label: "Password",
              hintText: "Enter your password",
              obscureText: true,
            ),

            const SizedBox(height: 10),
            Obx(
              () => CustomButton(
                text: "Login",
                onPressed: controller.signinUserById,
                isLoading: controller.isLoading.value,
              ),
            ),
          ],
        ),
      ).paddingAll(16),
    );
  }
}

