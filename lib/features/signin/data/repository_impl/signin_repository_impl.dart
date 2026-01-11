import '../../../../app_exports.dart';

class SigninRepositoryImpl extends BaseRepository implements ISigninRepository {
  final IRemoteSigninDataSource dataSource;

  SigninRepositoryImpl({required this.dataSource});

  @override
  Future<Either<AppException, UserEntity>> signinUser({
    required LoginUser loginUser,
  }) async {
    return execute(
      call: () async {
        final model = await dataSource.loginUser(loginUser: loginUser);
        return model.toEntity();
      },
    );
  }
}
