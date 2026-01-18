import '../../../../app_exports.dart';

abstract interface class ICreateComplaintRepository {
  Future<Either<AppException, CreateComplaintResponse>> performAction({
    required CreateComplaintParams params,
  });
}
