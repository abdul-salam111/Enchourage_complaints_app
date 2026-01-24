import '../../../../app_exports.dart';

abstract interface class IRemoteAllComplaintsDataSource {
  Future<ComplaintsList> getAllComplaintsList();
}

class RemoteAllComplaintsDataSourceImpl extends BaseRemoteDatasource
    implements IRemoteAllComplaintsDataSource {
  RemoteAllComplaintsDataSourceImpl({required super.dioHelper});

  @override
  Future<ComplaintsList> getAllComplaintsList() async {
    return get(
      url: ApiEndPoints.allComplaintsEndpoint,
      parser: (json) => ComplaintsList.fromJson(json),
    );
  }
}
