import '../../../../app_exports.dart';

abstract interface class IRemoteComplaintDetailsDataSource {
  Future<ViewComplaint> viewComplaintDetails({required int complaintId});
  Future<SentMessageResponse> addNewMessageToComplaint({
    required int complaintId,
    required String message,
  });
  Future<SetDurationResponse> setComplaintDuration({
    required int complaintId,
    required String durationKey,
  });

  Future<MessagesList> getMessagesList({required int complaintId});
  Future<ComplaintBillsList> getComplaintBillsList({required int complaintId});

  Future<ComplaintPropertyList> getComplaintPropertyList({
    required int complaintId,
  });
  Future<BillsTypesList> getBillsTypesListDropdown();
  Future<CreateComplaintBillResponse> createComplaintBill({
    required AddComplaintBillRequest complaintDetails,
  });
  Future<CreateComplaintBillResponse> updateComplaintBill({
    required AddComplaintBillRequest complaintDetails,
    required int billId,
  });
  Future<bool> deleteComplaintBill({required int billId});
}

class RemoteComplaintDetailsDataSourceImpl extends BaseRemoteDatasource
    implements IRemoteComplaintDetailsDataSource {
  RemoteComplaintDetailsDataSourceImpl({required super.dioHelper});

  @override
  Future<ViewComplaint> viewComplaintDetails({required int complaintId}) async {
    return get(
      url: ApiEndPoints.getComplaintDetailsEndpoint(complaintId),
      parser: (json) => ViewComplaint.fromJson(json),
    );
  }

  @override
  Future<SentMessageResponse> addNewMessageToComplaint({
    required int complaintId,
    required String message,
  }) async {
    return post(
      url: ApiEndPoints.sentMessageByAdmin(complaintId),
      parser: (json) => SentMessageResponse.fromJson(json),
      body: {"message": message},
    );
  }

  @override
  Future<SetDurationResponse> setComplaintDuration({
    required int complaintId,
    required String durationKey,
  }) async {
    return post(
      url: ApiEndPoints.changeComplaintDuration(complaintId),
      parser: (json) => SetDurationResponse.fromJson(json),
      body: {"duration_key": durationKey},
    );
  }

  @override
  Future<MessagesList> getMessagesList({required int complaintId}) async {
    return get(
      url: ApiEndPoints.getMessagesList(complaintId),
      parser: (json) => MessagesList.fromJson(json),
    );
  }

  @override
  Future<ComplaintBillsList> getComplaintBillsList({
    required int complaintId,
  }) async {
    return get(
      url: ApiEndPoints.getComplaintBillsList(complaintId),
      parser: (json) => ComplaintBillsList.fromJson(json),
    );
  }

  @override
  Future<ComplaintPropertyList> getComplaintPropertyList({
    required int complaintId,
  }) async {
    return get(
      url: ApiEndPoints.getComplaintPropertyList(complaintId),
      parser: (json) => ComplaintPropertyList.fromJson(json),
    );
  }

  @override
  Future<BillsTypesList> getBillsTypesListDropdown() async {
    return get(
      url: ApiEndPoints.getBillingDropdownList(),
      parser: (json) => BillsTypesList.fromJson(json),
    );
  }

  @override
  Future<CreateComplaintBillResponse> createComplaintBill({
    required AddComplaintBillRequest complaintDetails,
  }) async {
    try {
      final fields = complaintDetails.toJson();
      List<FileUploadModel>? files;
      if (complaintDetails.receipts != null &&
          complaintDetails.receipts!.isNotEmpty) {
        files = complaintDetails.receipts!
            .map(
              (path) =>
                  FileUploadModel(fieldName: 'receipt[]', filePath: path.path),
            )
            .toList();
      }

      final response = await dioHelper.sendMultipartRequest(
        url: ApiEndPoints.createComplaintBill(),
        fields: fields,
        files: files,
        isAuthRequired: true,
        authToken: await storage.readValues(StorageKeys.token),
        onSendProgress: (sent, total) {},
      );

      return CreateComplaintBillResponse.fromJson(response);
    } on AppException {
      rethrow;
    } catch (e) {
      throw AppException(e.toString());
    }
  }

  @override
  Future<CreateComplaintBillResponse> updateComplaintBill({
    required AddComplaintBillRequest complaintDetails,
    required int billId,
  }) async {
    try {
      final fields = complaintDetails.toJson();

      // Add _method field for Laravel PUT method spoofing
      fields['_method'] = 'PUT';

      // Handle file uploads
      List<FileUploadModel>? files;
      if (complaintDetails.receipts != null &&
          complaintDetails.receipts!.isNotEmpty) {
        files = complaintDetails.receipts!
            .map(
              (path) =>
                  FileUploadModel(fieldName: 'receipt[]', filePath: path.path),
            )
            .toList();
      }

      final response = await dioHelper.sendMultipartRequest(
        url: ApiEndPoints.updateComplaintBill(billId),
        fields: fields,
        files: files,
        isAuthRequired: true,
        authToken: await storage.readValues(StorageKeys.token),
        onSendProgress: (sent, total) {},
      );

      return CreateComplaintBillResponse.fromJson(response);
    } on AppException {
      rethrow;
    } catch (e) {
      throw AppException(e.toString());
    }
  }

  @override
  Future<bool> deleteComplaintBill({required int billId}) async {
    return delete<bool>(
      url: ApiEndPoints.deleteComplaintBill(billId),
      parser: (json) => true,
    );
  }
}
