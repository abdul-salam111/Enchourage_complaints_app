import '../../../../app_exports.dart';

abstract interface class IIndoorComplaintsRepository {
  Future<Either<AppException, AllComplaintsList>> getIndoorComplaintsList();
}
