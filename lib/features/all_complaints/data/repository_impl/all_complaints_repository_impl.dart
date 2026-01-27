import '../../../../app_exports.dart';

class AllComplaintsRepositoryImpl extends BaseRepository
    implements IAllComplaintsRepository {
  final IRemoteAllComplaintsDataSource dataSource;

  AllComplaintsRepositoryImpl({required this.dataSource});

  @override
  Future<Either<AppException, ComplaintsList>> getAllComplaintsList() {
    return execute(call: () => dataSource.getAllComplaintsList());
  }

  @override
  Future<Either<AppException, bool>> deleteComplaint({
    required int complaintId,
  }) {
    return execute(
      call: () => dataSource.deleteComplaint(complaintId: complaintId),
    );
  }

  @override
  Future<Either<AppException, bool>> deleteSelectedComplaints({
    required List<int> complaintId,
  }) {
    return execute(
      call: () =>
          dataSource.deleteSelectedComplaints(complaintIds: complaintId),
    );
  }
}
