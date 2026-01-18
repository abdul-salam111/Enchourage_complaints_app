import '../../../../app_exports.dart';

abstract interface class IRemoteOutdoorComplaintsDataSource {
  Future<AllComplaintsList> getOutdoorComplaintsList();
}

class RemoteOutdoorComplaintsDataSourceImpl extends BaseRemoteDatasource
    implements IRemoteOutdoorComplaintsDataSource {
  RemoteOutdoorComplaintsDataSourceImpl({required super.dioHelper});

  @override
  Future<AllComplaintsList> getOutdoorComplaintsList() async {
    print("outdoor complaints");
    return get(
      url: ApiEndPoints.outdoorComplaintsEndpoint,
      parser: (json) => AllComplaintsList.fromJson(json),
    );
  }
}
