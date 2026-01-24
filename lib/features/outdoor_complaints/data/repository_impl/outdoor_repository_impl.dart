import '../../../../app_exports.dart';
import '../models/response_models/outdoor_complaints_list.dart';

class OutdoorComplaintsRepositoryImpl extends BaseRepository
    implements IOutdoorComplaintsRepository {
  final IRemoteOutdoorComplaintsDataSource dataSource;

  OutdoorComplaintsRepositoryImpl({required this.dataSource});

  @override
  Future<Either<AppException, OutdoorComplaintsList>>
  getOutdoorComplaintsList() {
    return execute(call: () => dataSource.getOutdoorComplaintsList());
  }
}
