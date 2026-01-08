import '../../../../app_exports.dart';

class SigninViewModel extends ChangeNotifier with UseCaseExecutor {
  final SigninUsecase _signinUsecase;

  SigninViewModel({required SigninUsecase signinUsecase})
    : _signinUsecase = signinUsecase;

  UserToken? _userToken;
  UserToken? get userToken => _userToken;

  Future<void> signin(String userId, String password) async {
    await execute(
      call: () =>
          _signinUsecase(LoginUserById(uid: userId, password: password)),
      onSuccess: (token) {
        _userToken = token;
      },
    );
  }
}

