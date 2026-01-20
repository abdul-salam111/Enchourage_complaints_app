import '../../../../app_exports.dart';

abstract interface class IOutdoorComplaintsRepository {
  Future<Either<AppException, ComplaintsList>> getOutdoorComplaintsList();
}
