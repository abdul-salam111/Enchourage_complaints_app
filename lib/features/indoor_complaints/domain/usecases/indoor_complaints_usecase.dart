import '../../../../app_exports.dart';

class IndoorComplaintsUsecase implements Usecase<AllComplaintsList, NoParams> {
  final IIndoorComplaintsRepository repository;

  IndoorComplaintsUsecase({required this.repository});

  @override
  Future<Either<AppException, AllComplaintsList>> call(NoParams params) {
    return repository.getIndoorComplaintsList();
  }
}
