import '../../../../app_exports.dart';

class CreateComplaintUsecase
    implements Usecase<CreateComplaintResponse, CreateComplaintParams> {
  final ICreateComplaintRepository repository;

  CreateComplaintUsecase({required this.repository});

  @override
  Future<Either<AppException, CreateComplaintResponse>> call(
    CreateComplaintParams params,
  ) {
    return Future.delayed(Duration(seconds: 1));
  }
}
