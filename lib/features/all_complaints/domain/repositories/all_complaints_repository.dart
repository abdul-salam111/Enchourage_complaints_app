import '../../../../app_exports.dart';

abstract interface class IAllComplaintsRepository {
  Future<Either<AppException, ComplaintsList>> getAllComplaintsList();
}
