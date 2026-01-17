import '../../../../app_exports.dart';

class AllComplaintsRepositoryImpl extends BaseRepository
    implements IAllComplaintsRepository {
  final IRemoteAllComplaintsDataSource dataSource;

  AllComplaintsRepositoryImpl({required this.dataSource});

  @override
  Future<Either<AppException, AllComplaintsList>> getAllComplaintsList() {
    return execute(call: () => dataSource.getAllComplaintsList());
  }
}
