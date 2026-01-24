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
}
