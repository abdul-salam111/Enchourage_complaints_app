import '../../../../app_exports.dart';

abstract interface class IAllComplaintsRepository {
  Future<Either<AppException, AllComplaintsList>> getAllComplaintsList();
}
