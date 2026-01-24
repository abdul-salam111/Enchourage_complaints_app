import '../../../../app_exports.dart';
import '../models/response_models/outdoor_complaints_list.dart';

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
