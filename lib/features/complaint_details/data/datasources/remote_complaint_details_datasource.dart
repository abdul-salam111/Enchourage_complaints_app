import '../../../../app_exports.dart';

abstract interface class IRemoteComplaintDetailsDataSource {
  Future<ComplaintDetailsResponse> performAction({
    required ComplaintDetailsParams params,
  });
}

class RemoteComplaintDetailsDataSourceImpl extends BaseRemoteDatasource
    implements IRemoteComplaintDetailsDataSource {
  RemoteComplaintDetailsDataSourceImpl({required super.dioHelper});

  @override
  Future<ComplaintDetailsResponse> performAction({
    required ComplaintDetailsParams params,
  }) async {
    return post(
      url: ApiEndPoints.allComplaintsEndpoint,
      parser: (json) => ComplaintDetailsResponse.fromJson(json),
      body: params.toJson(),
    );
  }
}
