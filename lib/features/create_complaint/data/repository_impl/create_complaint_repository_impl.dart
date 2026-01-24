import '../../../../app_exports.dart';

class CreateComplaintRepositoryImpl extends BaseRepository
    implements ICreateComplaintRepository {
  final IRemoteCreateComplaintDataSource dataSource;

  CreateComplaintRepositoryImpl({required this.dataSource});

  @override
  Future<Either<AppException, BlockList>> getBlockList() {
    return execute(call: () => dataSource.getBlockList());
  }

  @override
  Future<Either<AppException, StreetList>> getStreetList({
    required int blockId,
  }) {
    return execute(call: () => dataSource.getStreetList(blockId: blockId));
  }

  @override
  Future<Either<AppException, PlotList>> getPlotList({required int streetId}) {
    return execute(call: () => dataSource.getPlotList(streetId: streetId));
  }

  @override
  Future<Either<AppException, ResidentOwner>> getResidentOwner({
    required int plotId,
  }) {
    return execute(call: () => dataSource.getResidentOwner(plotId: plotId));
  }

  @override
  Future<Either<AppException, ComplaintTypesList>> getComplaintTypes() {
    return execute(call: () => dataSource.getComplaintTypes());
  }

  @override
  Future<Either<AppException, CreateComplaintResponse>> createComplaint({
    required CreateComplaintRequest request,
  }) {
    return execute(call: () => dataSource.createComplaint(request: request));
  }
}
