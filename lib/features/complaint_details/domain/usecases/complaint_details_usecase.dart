import '../../../../app_exports.dart';

class ComplaintDetailsUsecase implements Usecase<ComplaintDetailsResponse, ComplaintDetailsParams> {
  final IComplaintDetailsRepository repository;

  ComplaintDetailsUsecase({required this.repository});

  @override
  Future<Either<AppException, ComplaintDetailsResponse>> call(ComplaintDetailsParams params) {
    return repository.performAction(params: params);
  }
}
