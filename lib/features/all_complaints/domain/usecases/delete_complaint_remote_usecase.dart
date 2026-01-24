import '../../../../app_exports.dart';

class DeleteComplaintRemoteUsecase implements Usecase<bool, int> {
  final IAllComplaintsRepository repository;

  DeleteComplaintRemoteUsecase({required this.repository});

  @override
  Future<Either<AppException, bool>> call(int complaintId) {
    return repository.deleteComplaint(complaintId: complaintId);
  }
}
