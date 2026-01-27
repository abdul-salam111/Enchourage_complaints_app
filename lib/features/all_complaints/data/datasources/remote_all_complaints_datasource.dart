import '../../../../app_exports.dart';

abstract interface class IRemoteAllComplaintsDataSource {
  Future<ComplaintsList> getAllComplaintsList();
  Future<bool> deleteComplaint({required int complaintId});
  Future<bool> deleteSelectedComplaints({required List<int> complaintIds});
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

  @override
  Future<bool> deleteComplaint({required int complaintId}) async {
    return delete<bool>(
      url: ApiEndPoints.deleteComplaintEndpoint(complaintId),
      parser: (json) => true,
    );
  }

  @override
  Future<bool> deleteSelectedComplaints({
    required List<int> complaintIds,
  }) async {
    return post<bool>(
      url: ApiEndPoints.deleteSelectedComplaints(),
      body: {'complaint_ids': complaintIds},
      parser: (json) => true,
    );
  }
}
