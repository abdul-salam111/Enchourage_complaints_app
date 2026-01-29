import '../../../../app_exports.dart';

abstract interface class IRemoteOutdoorComplaintsDataSource {
  Future<OutdoorComplaintsList> getOutdoorComplaintsList();
}

class RemoteOutdoorComplaintsDataSourceImpl extends BaseRemoteDatasource
    implements IRemoteOutdoorComplaintsDataSource {
  RemoteOutdoorComplaintsDataSourceImpl({required super.dioHelper});

  @override
  Future<OutdoorComplaintsList> getOutdoorComplaintsList() async {
    return get(
      url: ApiEndPoints.outdoorComplaintsEndpoint,
      parser: (json) => OutdoorComplaintsList.fromJson(json),
    );
  }
}
