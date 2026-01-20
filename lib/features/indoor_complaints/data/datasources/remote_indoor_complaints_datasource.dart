import '../../../../app_exports.dart';

abstract interface class IRemoteIndoorComplaintsDataSource {
  Future<ComplaintsList> getIndoorComplaintsList();
}

class RemoteIndoorComplaintsDataSourceImpl extends BaseRemoteDatasource
    implements IRemoteIndoorComplaintsDataSource {
  RemoteIndoorComplaintsDataSourceImpl({required super.dioHelper});

  @override
  Future<ComplaintsList> getIndoorComplaintsList() async {
    return get(
      url: ApiEndPoints.indoorComplaintsEndpoint,
      parser: (json) => ComplaintsList.fromJson(json),
    );
  }
}
