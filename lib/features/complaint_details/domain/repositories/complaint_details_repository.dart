import '../../../../app_exports.dart';

abstract interface class IComplaintDetailsRepository {
  Future<Either<AppException, ViewComplaint>> getComplaintDetails({
    required int complaintId,
  });
}
