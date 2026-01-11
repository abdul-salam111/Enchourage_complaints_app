import '../../../../app_exports.dart';

class SigninUsecase implements Usecase<UserEntity, LoginUser> {
  final ISigninRepository repository;

  SigninUsecase({required this.repository});

  @override
  Future<Either<AppException, UserEntity>> call(LoginUser loginUser) {
    return repository.signinUser(loginUser: loginUser);
  }
}
