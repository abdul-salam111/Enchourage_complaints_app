import '../../../../app_exports.dart';

abstract interface class IRemoteAllComplaintsDataSource {
  Future<AllComplaintsList> getAllComplaintsList();
}

class RemoteAllComplaintsDataSourceImpl extends BaseRemoteDatasource
    implements IRemoteAllComplaintsDataSource {
  RemoteAllComplaintsDataSourceImpl({required super.dioHelper});

  @override
  Future<AllComplaintsList> getAllComplaintsList() async {
    return get(
      url: ApiEndPoints.allComplaintsEndpoint,
      parser: (json) => AllComplaintsList.fromJson(json),
    );
  }
}
