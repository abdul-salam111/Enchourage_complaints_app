import 'package:flutter/material.dart';
import 'package:flutter_template/core/core.dart';
import 'package:flutter_template/features/signin/domain/usecases/signin_remote_usecase.dart';
import 'package:get/get.dart';
import '../../data/models/request_models/login_user_by_id/login_user_by_id.dart';
import '../../domain/repositories/signin_repository.dart';

class SigninViewModel extends GetxController {
  final ISigninRepository repository;
  final SigninRemoteUsecase signinRemoteUsecase;

  SigninViewModel({
    required this.repository,
    required this.signinRemoteUsecase,
  });

  final uidController = TextEditingController();
  final passwordController = TextEditingController();
  var isLoading = false.obs;
  Future<void> siginUserById() async {
    isLoading.value = true;
    final result = await signinRemoteUsecase.call(
      LoginUserById(uid: uidController.text, password: passwordController.text),
    );
    result.fold(
      (eror) {
        isLoading.value = false;
        AppToastsUtils.showErrorTop(eror.toString());
      },
      (succcess) {
        isLoading.value = false;
        print("success ${succcess}");
      },
    );
  }

  @override
  void onClose() {
    // Clean up resources
    super.onClose();
  }
}
