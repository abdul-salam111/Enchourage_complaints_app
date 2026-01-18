import '../../../../app_exports.dart';

abstract interface class IRemoteIndoorComplaintsDataSource {
  Future<AllComplaintsList> getIndoorComplaintsList();
}

class RemoteIndoorComplaintsDataSourceImpl extends BaseRemoteDatasource
    implements IRemoteIndoorComplaintsDataSource {
  RemoteIndoorComplaintsDataSourceImpl({required super.dioHelper});

  @override
  Future<AllComplaintsList> getIndoorComplaintsList() async {
    print("indoor complaints");
    return get(
      url: ApiEndPoints.indoorComplaintsEndpoint,
      parser: (json) => AllComplaintsList.fromJson(json),
    );
  }
}
