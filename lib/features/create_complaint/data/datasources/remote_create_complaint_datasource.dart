import '../../../../app_exports.dart';

abstract interface class IRemoteCreateComplaintDataSource {
  Future<BlockList> getBlockList();
  Future<StreetList> getStreetList({required int blockId});
  Future<PlotList> getPlotList({required int streetId});
}

class RemoteCreateComplaintDataSourceImpl extends BaseRemoteDatasource
    implements IRemoteCreateComplaintDataSource {
  RemoteCreateComplaintDataSourceImpl({required super.dioHelper});

  @override
  Future<BlockList> getBlockList() async {
    return get(
      url: ApiEndPoints.getAllBlocksEndpoint,
      parser: (json) => BlockList.fromJson(json),
    );
  }

  @override
  Future<StreetList> getStreetList({required int blockId}) async {
    return get(
      url: "${ApiEndPoints.getStreetEndpoint}$blockId",
      parser: (json) => StreetList.fromJson(json),
    );
  }

  @override
  Future<PlotList> getPlotList({required int streetId}) async {
    return get(
      url: "${ApiEndPoints.getPlotEndpoint}$streetId",
      parser: (json) => PlotList.fromJson(json),
    );
  }
}
