import '../../../../app_exports.dart';

class CreateComplaintRepositoryImpl extends BaseRepository implements ICreateComplaintRepository {
  final IRemoteCreateComplaintDataSource dataSource;

  CreateComplaintRepositoryImpl({required this.dataSource});

  @override
  Future<Either<AppException, CreateComplaintResponse>> performAction({
    required CreateComplaintParams params,
  }) {
    return execute(
      call: () => dataSource.performAction(params: params),
    );
  }
}
