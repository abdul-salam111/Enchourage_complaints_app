import '../../../../app_exports.dart';

class UpdateComplaintBillParam {
  final AddComplaintBillRequest addComplaintBillRequest;
  final int billId;
  UpdateComplaintBillParam({
    required this.addComplaintBillRequest,
    required this.billId,
  });
}

class UpdateComplaintBillUsecase
    implements Usecase<CreateComplaintBillResponse, UpdateComplaintBillParam> {
  final IComplaintDetailsRepository repository;

  UpdateComplaintBillUsecase({required this.repository});

  @override
  Future<Either<AppException, CreateComplaintBillResponse>> call(
    UpdateComplaintBillParam complaintDetails,
  ) {
    return repository.updateComplaintBill(
      complaintDetails: complaintDetails.addComplaintBillRequest,
      billId: complaintDetails.billId,
    );
  }
}
