import '../../../../app_exports.dart';

abstract interface class ISigninRepository {
  Future<Either<AppException, UserEntity>> signinUser({
    required LoginUser loginUser,
  });
}
