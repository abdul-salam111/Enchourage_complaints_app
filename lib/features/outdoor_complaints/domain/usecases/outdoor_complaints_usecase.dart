import '../../../../app_exports.dart';

class OutdoorComplaintsUsecase
    implements Usecase<OutdoorComplaintsList, NoParams> {
  final IOutdoorComplaintsRepository repository;

  OutdoorComplaintsUsecase({required this.repository});

  @override
  Future<Either<AppException, OutdoorComplaintsList>> call(NoParams params) {
    return repository.getOutdoorComplaintsList();
  }
}
