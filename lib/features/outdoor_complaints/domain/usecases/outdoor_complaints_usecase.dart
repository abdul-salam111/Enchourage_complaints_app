import '../../../../app_exports.dart';

class OutdoorComplaintsUsecase implements Usecase<AllComplaintsList, NoParams> {
  final IOutdoorComplaintsRepository repository;

  OutdoorComplaintsUsecase({required this.repository});

  @override
  Future<Either<AppException, AllComplaintsList>> call(NoParams params) {
    return repository.getOutdoorComplaintsList();
  }
}
