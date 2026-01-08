import '../../../../app_exports.dart';

class SigninRepositoryImpl extends BaseRepository implements ISigninRepository {
  final IRemoteSigninDataSource dataSource;

  SigninRepositoryImpl({required this.dataSource});

  @override
  Future<Either<AppException, UserToken>> signinUserById({
    required LoginUserById loginUserById,
  }) {
    return execute(
      call: () => dataSource.loginUserById(loginUserById: loginUserById),
    );
  }
}
