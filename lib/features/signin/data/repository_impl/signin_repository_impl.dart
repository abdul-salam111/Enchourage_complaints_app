import '../../../../app_exports.dart';

class SigninRepositoryImpl extends BaseRepository implements ISigninRepository {
  final IRemoteSigninDataSource dataSource;

  SigninRepositoryImpl({required this.dataSource});

  @override
  Future<Either<AppException, UserModel>> signinUser({
    required LoginUser loginUserById,
  }) {
    return execute(call: () => dataSource.loginUser(loginUser: loginUserById));
  }
}
