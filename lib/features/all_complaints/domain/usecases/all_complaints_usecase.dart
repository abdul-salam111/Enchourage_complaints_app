import '../../../../app_exports.dart';

class AllComplaintsUsecase implements Usecase<ComplaintsList, NoParams> {
  final IAllComplaintsRepository repository;

  AllComplaintsUsecase({required this.repository});

  @override
  Future<Either<AppException, ComplaintsList>> call(NoParams params) {
    return repository.getAllComplaintsList();
  }
}
