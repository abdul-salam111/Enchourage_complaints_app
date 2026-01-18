import '../../../../app_exports.dart';

class IndoorComplaintsRepositoryImpl extends BaseRepository
    implements IIndoorComplaintsRepository {
  final IRemoteIndoorComplaintsDataSource dataSource;

  IndoorComplaintsRepositoryImpl({required this.dataSource});

  @override
  Future<Either<AppException, AllComplaintsList>> getIndoorComplaintsList() {
    return execute(call: () => dataSource.getIndoorComplaintsList());
  }
}
