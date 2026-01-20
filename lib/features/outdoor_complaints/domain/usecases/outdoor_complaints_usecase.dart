import '../../../../app_exports.dart';

class OutdoorComplaintsUsecase implements Usecase<ComplaintsList, NoParams> {
  final IOutdoorComplaintsRepository repository;

  OutdoorComplaintsUsecase({required this.repository});

  @override
  Future<Either<AppException, ComplaintsList>> call(NoParams params) {
    return repository.getOutdoorComplaintsList();
  }
}
