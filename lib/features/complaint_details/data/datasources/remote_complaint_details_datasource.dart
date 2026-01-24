import '../../../../app_exports.dart';

abstract interface class IRemoteComplaintDetailsDataSource {
  Future<ViewComplaint> viewComplaintDetails({required int complaintId});
}

class RemoteComplaintDetailsDataSourceImpl extends BaseRemoteDatasource
    implements IRemoteComplaintDetailsDataSource {
  RemoteComplaintDetailsDataSourceImpl({required super.dioHelper});

  @override
  Future<ViewComplaint> viewComplaintDetails({required int complaintId}) async {
    return get(
      url: ApiEndPoints.getComplaintDetailsEndpoint(complaintId),
      parser: (json) => ViewComplaint.fromJson(json),
    );
  }
}
