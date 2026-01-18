import '../../../../app_exports.dart';

abstract interface class IRemoteCreateComplaintDataSource {
  Future<CreateComplaintResponse> performAction({
    required CreateComplaintParams params,
  });
}

class RemoteCreateComplaintDataSourceImpl extends BaseRemoteDatasource
    implements IRemoteCreateComplaintDataSource {
  RemoteCreateComplaintDataSourceImpl({required super.dioHelper});

  @override
  Future<CreateComplaintResponse> performAction({
    required CreateComplaintParams params,
  }) async {
    return post(
      url: ApiEndPoints.addComplaintEndpoint,
      parser: (json) => CreateComplaintResponse.fromJson(json),
      body: params.toJson(),
    );
  }
}
