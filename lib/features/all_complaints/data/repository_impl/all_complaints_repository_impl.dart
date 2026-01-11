import '../../../../app_exports.dart';

class AllComplaintsRepositoryImpl extends BaseRepository implements IAllComplaintsRepository {
  final IRemoteAllComplaintsDataSource dataSource;

  AllComplaintsRepositoryImpl({required this.dataSource});

  @override
  Future<Either<AppException, AllComplaintsResponse>> performAction({
    required AllComplaintsParams params,
  }) {
    return execute(
      call: () => dataSource.performAction(params: params),
    );
  }
}
