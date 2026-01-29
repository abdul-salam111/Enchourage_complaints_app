import '../../../../app_exports.dart';

abstract interface class IComplaintDetailsRepository {
  Future<Either<AppException, ViewComplaint>> getComplaintDetails({
    required int complaintId,
  });

  Future<Either<AppException, SentMessageResponse>> addNewMessageToComplaint({
    required int complaintId,
    required String message,
  });

  Future<Either<AppException, SetDurationResponse>> setComplaintDuration({
    required int complaintId,
    required String durationKey,
  });

  Future<Either<AppException, MessagesList>> getMessagesList({
    required int complaintId,
  });
  Future<Either<AppException, ComplaintBillsList>> getComplaintBillsList({
    required int complaintId,
  });
  Future<Either<AppException, BillsTypesList>> getBillsTypesListDropdown();

  Future<Either<AppException, ComplaintPropertyList>> getComplaintPropertyList({
    required int complaintId,
  });

  Future<Either<AppException, CreateComplaintBillResponse>>
  createComplaintBill({required AddComplaintBillRequest complaintDetails});
}
