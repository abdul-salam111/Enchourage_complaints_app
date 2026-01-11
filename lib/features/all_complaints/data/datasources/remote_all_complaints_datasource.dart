import '../../../../app_exports.dart';

abstract interface class IRemoteAllComplaintsDataSource {
  Future<AllComplaintsResponse> performAction({
    required AllComplaintsParams params,
  });
}

class RemoteAllComplaintsDataSourceImpl extends BaseRemoteDatasource
    implements IRemoteAllComplaintsDataSource {
  RemoteAllComplaintsDataSourceImpl({required super.dioHelper});

  @override
  Future<AllComplaintsResponse> performAction({
    required AllComplaintsParams params,
  }) async {
    return post(
      url: ApiEndPoints.allComplaintsEndpoint,
      parser: (json) => AllComplaintsResponse.fromJson(json),
      body: params.toJson(),
    );
  }
}
