import '../../../../app_exports.dart';

class AddComplaintBillUsecase
    implements Usecase<CreateComplaintBillResponse, AddComplaintBillRequest> {
  final IComplaintDetailsRepository repository;

  AddComplaintBillUsecase({required this.repository});

  @override
  Future<Either<AppException, CreateComplaintBillResponse>> call(
    AddComplaintBillRequest complaintDetails,
  ) {
    return repository.createComplaintBill(complaintDetails: complaintDetails);
  }
}
