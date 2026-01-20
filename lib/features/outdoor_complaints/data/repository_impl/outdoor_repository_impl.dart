import '../../../../app_exports.dart';

class OutdoorComplaintsRepositoryImpl extends BaseRepository
    implements IOutdoorComplaintsRepository {
  final IRemoteOutdoorComplaintsDataSource dataSource;

  OutdoorComplaintsRepositoryImpl({required this.dataSource});

  @override
  Future<Either<AppException, ComplaintsList>> getOutdoorComplaintsList() {
    return execute(call: () => dataSource.getOutdoorComplaintsList());
  }
}
