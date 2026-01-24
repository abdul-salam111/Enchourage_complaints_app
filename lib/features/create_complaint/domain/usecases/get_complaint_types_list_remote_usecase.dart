import '../../../../app_exports.dart';

class GetComplaintTypesListRemoteUsecase
    implements Usecase<ComplaintTypesList, NoParams> {
  final ICreateComplaintRepository repository;

  GetComplaintTypesListRemoteUsecase({required this.repository});

  @override
  Future<Either<AppException, ComplaintTypesList>> call(NoParams params) {
    return repository.getComplaintTypes();
  }
}
