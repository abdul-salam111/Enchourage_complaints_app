import '../../../../app_exports.dart';

class IndoorComplaintsUsecase implements Usecase<ComplaintsList, NoParams> {
  final IIndoorComplaintsRepository repository;

  IndoorComplaintsUsecase({required this.repository});

  @override
  Future<Either<AppException, ComplaintsList>> call(NoParams params) {
    return repository.getIndoorComplaintsList();
  }
}
