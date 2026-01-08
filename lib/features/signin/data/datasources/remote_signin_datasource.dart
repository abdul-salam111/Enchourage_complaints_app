import '../../../../app_exports.dart';

abstract interface class IRemoteSigninDataSource {
  Future<UserToken> loginUserById({required LoginUserById loginUserById});
}

class RemoteSigninDataSourceImpl extends BaseRemoteDatasource
    implements IRemoteSigninDataSource {
  RemoteSigninDataSourceImpl({required super.dioHelper});

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
