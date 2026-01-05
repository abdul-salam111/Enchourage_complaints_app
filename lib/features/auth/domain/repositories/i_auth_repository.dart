import '../../../../app_exports.dart';

abstract interface class IAuthRepository {
  Future<Either<AppException, UserToken>> signinUserById({
    required LoginUserById loginUserById,
  });
}
