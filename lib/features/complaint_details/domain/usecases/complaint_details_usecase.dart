import '../../../../app_exports.dart';

class ComplaintDetailsUsecase implements Usecase<ViewComplaint, int> {
  final IComplaintDetailsRepository repository;

  ComplaintDetailsUsecase({required this.repository});

  @override
  Future<Either<AppException, ViewComplaint>> call(int complaintId) {
    return repository.getComplaintDetails(complaintId: complaintId);
  }
}
