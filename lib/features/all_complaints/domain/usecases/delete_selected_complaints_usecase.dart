import '../../../../app_exports.dart';

class DeleteSelectedComplaintsUsecase implements Usecase<bool, List<int>> {
  final IAllComplaintsRepository repository;

  DeleteSelectedComplaintsUsecase({required this.repository});

  @override
  Future<Either<AppException, bool>> call(List<int> complaintId) {
    return repository.deleteSelectedComplaints(complaintId: complaintId);
  }
}
