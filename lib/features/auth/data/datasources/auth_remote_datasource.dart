import '../../../../app_exports.dart';

abstract interface class IRemoteAuthDataSource {
  Future<UserToken> loginUserById({required LoginUserById loginUserById});
}

class AuthRemoteDataSourceImpl extends BaseRemoteDatasource
    implements IRemoteAuthDataSource {
  AuthRemoteDataSourceImpl({required super.dioHelper});

  @override
  Future<UserToken> loginUserById({
    required LoginUserById loginUserById,
  }) async {
    return post(
      url: ApiEndPoints.loginByUid,
      parser: (json) => UserToken.fromJson(json),
      body: loginUserById.toJson(),
    );
  }
}
