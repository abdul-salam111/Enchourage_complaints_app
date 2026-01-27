import '../../../../app_exports.dart';

abstract interface class IAllComplaintsRepository {
  Future<Either<AppException, ComplaintsList>> getAllComplaintsList();
  Future<Either<AppException, bool>> deleteComplaint({
    required int complaintId,
  });

  Future<Either<AppException, bool>> deleteSelectedComplaints({
    required List<int> complaintId,
  });
}
