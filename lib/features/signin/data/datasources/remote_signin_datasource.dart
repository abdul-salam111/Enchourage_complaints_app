import '../../../../app_exports.dart';

abstract interface class IRemoteSigninDataSource {
  Future<UserModel> loginUser({required LoginUser loginUser});
}

class RemoteSigninDataSourceImpl extends BaseRemoteDatasource
    implements IRemoteSigninDataSource {
  RemoteSigninDataSourceImpl({required super.dioHelper});

  @override
  Future<UserModel> loginUser({required LoginUser loginUser}) async {
    return post(
      url: ApiEndPoints.loginEndpoint,
      parser: (json) => UserModel.fromJson(json),
      body: loginUser.toJson(),
    );
  }
}
