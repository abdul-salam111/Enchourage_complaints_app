import '../../../../app_exports.dart';

class DeleteComplaintBillUsecase implements Usecase<bool, int> {
  final IComplaintDetailsRepository repository;

  DeleteComplaintBillUsecase({required this.repository});

  @override
  Future<Either<AppException, bool>> call(int billId) {
    return repository.deleteComplaintBill(billId: billId);
  }
}
