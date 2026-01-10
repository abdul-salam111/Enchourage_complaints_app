import '../../../../app_exports.dart';

class SigninUsecase implements Usecase<UserModel, LoginUser> {
  final ISigninRepository repository;

  SigninUsecase({required this.repository});

  @override
  Future<Either<AppException, UserModel>> call(LoginUser loginUserById) {
    return repository.signinUser(loginUserById: loginUserById);
  }
}
