import '../../../../app_exports.dart';

class GetComplaintsPropertyListUsecase
    implements Usecase<ComplaintPropertyList, int> {
  final IComplaintDetailsRepository repository;

  GetComplaintsPropertyListUsecase({required this.repository});

  @override
  Future<Either<AppException, ComplaintPropertyList>> call(int complaintId) {
    return repository.getComplaintPropertyList(complaintId: complaintId);
  }
}
