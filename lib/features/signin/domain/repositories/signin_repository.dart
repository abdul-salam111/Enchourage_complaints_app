import '../../../../app_exports.dart';

abstract interface class ISigninRepository {
  Future<Either<AppException, UserModel>> signinUser({
    required LoginUser loginUserById,
  });
}
