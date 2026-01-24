import '../../../../app_exports.dart';
import '../../data/models/response_models/outdoor_complaints_list.dart';

class OutdoorComplaintsUsecase
    implements Usecase<OutdoorComplaintsList, NoParams> {
  final IOutdoorComplaintsRepository repository;

  OutdoorComplaintsUsecase({required this.repository});

  @override
  Future<Either<AppException, OutdoorComplaintsList>> call(NoParams params) {
    return repository.getOutdoorComplaintsList();
  }
}
