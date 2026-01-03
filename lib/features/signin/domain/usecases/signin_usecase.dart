import '../../../../app_exports.dart';

class SigninUsecase implements Usecase<UserToken, LoginUserById> {
  final ISigninRepository repository;

  SigninUsecase({required this.repository});

  @override
  Future<Either<AppException, UserToken>> call(LoginUserById loginUserById) {
    return repository.signinUserById(loginUserById: loginUserById);
  }
}

