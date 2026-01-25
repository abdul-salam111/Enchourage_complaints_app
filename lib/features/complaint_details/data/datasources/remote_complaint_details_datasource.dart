import '../../../../app_exports.dart';

abstract interface class IRemoteComplaintDetailsDataSource {
  Future<ViewComplaint> viewComplaintDetails({required int complaintId});
  Future<SentMessageResponse> addNewMessageToComplaint({
    required int complaintId,
    required String message,
  });
  Future<SetDurationResponse> setComplaintDuration({
    required int complaintId,
    required String durationKey,
  });
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

  @override
  Future<SentMessageResponse> addNewMessageToComplaint({
    required int complaintId,
    required String message,
  }) async {
    return post(
      url: ApiEndPoints.sentMessageByAdmin(complaintId),
      parser: (json) => SentMessageResponse.fromJson(json),
      body: {"message": message},
    );
  }

  @override
  Future<SetDurationResponse> setComplaintDuration({
    required int complaintId,
    required String durationKey,
  }) async {
    return post(
      url: ApiEndPoints.changeComplaintDuration(complaintId),
      parser: (json) => SetDurationResponse.fromJson(json),
      body: {"duration_key": durationKey},
    );
  }
}
