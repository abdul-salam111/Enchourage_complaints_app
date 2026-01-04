import 'package:flutter/material.dart';
import '../../../../app_exports.dart';

class SigninView extends GetView<SigninViewModel> {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return UnfocusWrapper(
      child: Scaffold(
        appBar: AppBar(title: const Text('Sign In')),
        body: Form(
          key: controller.formKey,
          child: Center(
            child: ListView(
              children: [
                AppLogo(),
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

                heightBox(context.screenHeight * 0.1),
                Obx(
                  () => CustomButton(
                    radius: 10,
                    text: "Login",
                    onPressed: () {
                      if (controller.formKey.currentState!.validate()) {
                        controller.signinUserById();
                      }
                    },
                    isLoading: controller.isLoading.value,
                  ),
                ),
              ],
            ),
          ).paddingAll(16),
        ),
      ),
    );
  }
}
