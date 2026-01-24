import '../../../../app_exports.dart';

abstract interface class ICreateComplaintRepository {
  Future<Either<AppException, BlockList>> getBlockList();
  Future<Either<AppException, StreetList>> getStreetList({
    required int blockId,
  });
  Future<Either<AppException, PlotList>> getPlotList({required int streetId});
  Future<Either<AppException, ResidentOwner>> getResidentOwner({
    required int plotId,
  });
  Future<Either<AppException, ComplaintTypesList>> getComplaintTypes();
  Future<Either<AppException, CreateComplaintResponse>> createComplaint({
    required CreateComplaintRequest request,
  });
}
