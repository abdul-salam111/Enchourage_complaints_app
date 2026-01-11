import '../../../../app_exports.dart';

class SigninViewModel extends ChangeNotifier with UseCaseExecutor {
  final SigninUsecase _signinUsecase;

  SigninViewModel({required SigninUsecase signinUsecase})
    : _signinUsecase = signinUsecase;

  Future<void> signin(String userId, String password) async {
    await execute(
      call: () => _signinUsecase(LoginUser(email: userId, password: password)),
      onSuccess: (user) async {
        await SessionController.instance.saveUser(user);
        await SessionController.instance.loadUser();
        AppNavigator.goNamed(RouteNames.signin);
      },
    );
  }
}
