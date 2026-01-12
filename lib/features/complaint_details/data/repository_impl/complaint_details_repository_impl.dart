import '../../../../app_exports.dart';

class ComplaintDetailsRepositoryImpl extends BaseRepository implements IComplaintDetailsRepository {
  final IRemoteComplaintDetailsDataSource dataSource;

  ComplaintDetailsRepositoryImpl({required this.dataSource});

  @override
  Future<Either<AppException, ComplaintDetailsResponse>> performAction({
    required ComplaintDetailsParams params,
  }) {
    return execute(
      call: () => dataSource.performAction(params: params),
    );
  }
}
