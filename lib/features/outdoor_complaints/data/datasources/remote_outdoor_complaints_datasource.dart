import '../../../../app_exports.dart';

abstract interface class IRemoteOutdoorComplaintsDataSource {
  Future<ComplaintsList> getOutdoorComplaintsList();
}

class RemoteOutdoorComplaintsDataSourceImpl extends BaseRemoteDatasource
    implements IRemoteOutdoorComplaintsDataSource {
  RemoteOutdoorComplaintsDataSourceImpl({required super.dioHelper});

  @override
  Future<ComplaintsList> getOutdoorComplaintsList() async {
    return get(
      url: ApiEndPoints.outdoorComplaintsEndpoint,
      parser: (json) => ComplaintsList.fromJson(json),
    );
  }
}
