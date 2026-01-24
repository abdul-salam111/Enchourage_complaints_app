import '../../../../app_exports.dart';

class CreateComplaintUsecase
    implements Usecase<CreateComplaintResponse, CreateComplaintRequest> {
  final ICreateComplaintRepository repository;

  CreateComplaintUsecase({required this.repository});

  @override
  Future<Either<AppException, CreateComplaintResponse>> call(
    CreateComplaintRequest params,
  ) async {
    return await repository.createComplaint(request: params);
  }
}
