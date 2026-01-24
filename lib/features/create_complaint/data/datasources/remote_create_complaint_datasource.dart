import '../../../../app_exports.dart';

abstract interface class IRemoteCreateComplaintDataSource {
  Future<BlockList> getBlockList();
  Future<StreetList> getStreetList({required int blockId});
  Future<PlotList> getPlotList({required int streetId});
  Future<ResidentOwner> getResidentOwner({required int plotId});
  Future<ComplaintTypesList> getComplaintTypes();
  Future<CreateComplaintResponse> createComplaint({
    required CreateComplaintRequest request,
  });
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

  @override
  Future<ResidentOwner> getResidentOwner({required int plotId}) async {
    return get(
      url: ApiEndPoints.getPlotResidentEndpoint(plotId),
      parser: (json) => ResidentOwner.fromJson(json),
    );
  }

  @override
  Future<ComplaintTypesList> getComplaintTypes() async {
    return get(
      url: ApiEndPoints.getComplaintTypesListEndpoint,
      parser: (json) => ComplaintTypesList.fromJson(json),
    );
  }

  @override
  Future<CreateComplaintResponse> createComplaint({
    required CreateComplaintRequest request,
  }) async {
    try {
      final fields = request.toJson();

      List<FileUploadModel>? files;
      if (request.attachmentPaths != null &&
          request.attachmentPaths!.isNotEmpty) {
        files = request.attachmentPaths!
            .map(
              (path) =>
                  FileUploadModel(fieldName: 'attachment[]', filePath: path),
            )
            .toList();
      }

      final response = await dioHelper.sendMultipartRequest(
        url: ApiEndPoints.createComplaintEndpoint,
        fields: fields,
        files: files,
        isAuthRequired: true,
        authToken: await storage.readValues(StorageKeys.token),
        onSendProgress: (sent, total) {},
      );

      return CreateComplaintResponse.fromJson(response);
    } on AppException {
      rethrow;
    } catch (e) {
      throw AppException(e.toString());
    }
  }
}
