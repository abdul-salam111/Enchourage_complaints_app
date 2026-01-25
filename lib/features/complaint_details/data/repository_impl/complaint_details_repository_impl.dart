import '../../../../app_exports.dart';

class ComplaintDetailsRepositoryImpl extends BaseRepository
    implements IComplaintDetailsRepository {
  final IRemoteComplaintDetailsDataSource dataSource;

  ComplaintDetailsRepositoryImpl({required this.dataSource});

  @override
  Future<Either<AppException, ViewComplaint>> getComplaintDetails({
    required int complaintId,
  }) {
    return execute(
      call: () => dataSource.viewComplaintDetails(complaintId: complaintId),
    );
  }

  @override
  Future<Either<AppException, SentMessageResponse>> addNewMessageToComplaint({
    required int complaintId,
    required String message,
  }) {
    return execute(
      call: () => dataSource.addNewMessageToComplaint(
        complaintId: complaintId,
        message: message,
      ),
    );
  }

  @override
  Future<Either<AppException, SetDurationResponse>> setComplaintDuration({
    required int complaintId,
    required String durationKey,
  }) {
    return execute(
      call: () => dataSource.setComplaintDuration(
        complaintId: complaintId,
        durationKey: durationKey,
      ),
    );
  }
}
