import '../../../../app_exports.dart';

abstract interface class IComplaintDetailsRepository {
  Future<Either<AppException, ComplaintDetailsResponse>> performAction({
    required ComplaintDetailsParams params,
  });
}
