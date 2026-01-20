import '../../../../app_exports.dart';

abstract interface class ICreateComplaintRepository {
  Future<Either<AppException, BlockList>> getBlockList();
  Future<Either<AppException, StreetList>> getStreetList({
    required int blockId,
  });
  Future<Either<AppException, PlotList>> getPlotList({required int streetId});
}
