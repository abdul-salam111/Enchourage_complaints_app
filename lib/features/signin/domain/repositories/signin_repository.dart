import '../../../../app_exports.dart';

abstract interface class ISigninRepository {
  Future<Either<AppException, UserToken>> signinUserById({
    required LoginUserById loginUserById,
  });
}
