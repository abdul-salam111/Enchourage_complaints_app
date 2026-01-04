import 'package:flutter/material.dart';

import '../../../../app_exports.dart';

class SigninViewModel extends GetxController {
  final SigninUsecase signinUsecase;

  SigninViewModel({required this.signinUsecase});
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final Rx<UserToken> data = UserToken().obs;
  final RxBool isLoading = false.obs;

  Future<void> signinUserById() async {
    await executeUseCase(
      useCase: () => signinUsecase.call(
        LoginUserById(
          uid: emailController.text.trim(),
          password: passwordController.text.trim(),
        ),
      ),
      loadingState: isLoading,
      onSuccess: (result) {
        data.value = result;
      },
    );
  }

  @override
  void onClose() {
    // Clean up resources
    super.onClose();
  }
}
