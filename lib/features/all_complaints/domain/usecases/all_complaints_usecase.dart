import '../../../../app_exports.dart';

class AllComplaintsUsecase implements Usecase<AllComplaintsList, NoParams> {
  final IAllComplaintsRepository repository;

  AllComplaintsUsecase({required this.repository});

  @override
  Future<Either<AppException, AllComplaintsList>> call(NoParams params) {
    return repository.getAllComplaintsList();
  }
}
