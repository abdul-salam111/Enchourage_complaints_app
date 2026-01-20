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
      url: "${ApiEndPoints.allComplaintsEndpoint}1",
      parser: (json) => ComplaintsList.fromJson(json),
    );
  }
}
