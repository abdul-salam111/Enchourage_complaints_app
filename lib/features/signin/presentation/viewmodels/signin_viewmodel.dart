import '../../../../app_exports.dart';

class SigninViewModel extends ChangeNotifier with UseCaseExecutor {
  final SigninUsecase _signinUsecase;

  SigninViewModel({required SigninUsecase signinUsecase})
    : _signinUsecase = signinUsecase;

  UserModel? _userModel;
  UserModel? get userModel => _userModel;

  Future<void> signin(String userId, String password) async {
    await execute(
      call: () => _signinUsecase(LoginUser(email: userId, password: password)),
      onSuccess: (user) async {
        _userModel = user;
        await SessionController.instance.saveUserInStorage(user);
        await SessionController.instance.getUserfromSharedpref();
        AppNavigator.goNamed(RouteNames.signin);
      },
    );
  }
}
