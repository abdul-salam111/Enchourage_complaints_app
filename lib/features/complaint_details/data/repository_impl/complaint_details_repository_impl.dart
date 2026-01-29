import 'package:enchourage_app/features/complaint_details/data/models/request_models/create_complaint_bill/add_complaint_bill_request.dart';
import 'package:enchourage_app/features/complaint_details/data/models/response_models/bills_types_list/bills_types_list.dart';
import 'package:enchourage_app/features/complaint_details/data/models/response_models/complaint_bills_list/complaint_bills_list.dart';
import 'package:enchourage_app/features/complaint_details/data/models/response_models/complaint_property_list/complaint_property_list.dart';
import 'package:enchourage_app/features/complaint_details/data/models/response_models/create_complaint_bill/create_complaint_bill_response.dart';

import '../../../../app_exports.dart';

class ComplaintDetailsRepositoryImpl extends BaseRepository
    implements IComplaintDetailsRepository {
  final IRemoteComplaintDetailsDataSource dataSource;

  ComplaintDetailsRepositoryImpl({required this.dataSource});

  @override
  Future<Either<AppException, ViewComplaint>> getComplaintDetails({
    required int complaintId,
  }) {
    return execute(
      call: () => dataSource.viewComplaintDetails(complaintId: complaintId),
    );
  }

  @override
  Future<Either<AppException, SentMessageResponse>> addNewMessageToComplaint({
    required int complaintId,
    required String message,
  }) {
    return execute(
      call: () => dataSource.addNewMessageToComplaint(
        complaintId: complaintId,
        message: message,
      ),
    );
  }

  @override
  Future<Either<AppException, SetDurationResponse>> setComplaintDuration({
    required int complaintId,
    required String durationKey,
  }) {
    return execute(
      call: () => dataSource.setComplaintDuration(
        complaintId: complaintId,
        durationKey: durationKey,
      ),
    );
  }

  @override
  Future<Either<AppException, MessagesList>> getMessagesList({
    required int complaintId,
  }) {
    return execute(
      call: () => dataSource.getMessagesList(complaintId: complaintId),
    );
  }

  @override
  Future<Either<AppException, ComplaintBillsList>> getComplaintBillsList({
    required int complaintId,
  }) {
    return execute(
      call: () => dataSource.getComplaintBillsList(complaintId: complaintId),
    );
  }

  @override
  Future<Either<AppException, ComplaintPropertyList>> getComplaintPropertyList({
    required int complaintId,
  }) {
    return execute(
      call: () => dataSource.getComplaintPropertyList(complaintId: complaintId),
    );
  }

  @override
  Future<Either<AppException, BillsTypesList>> getBillsTypesListDropdown() {
    return execute(call: () => dataSource.getBillsTypesListDropdown());
  }

  @override
  Future<Either<AppException, CreateComplaintBillResponse>>
  createComplaintBill({required AddComplaintBillRequest complaintDetails}) {
    return execute(
      call: () =>
          dataSource.createComplaintBill(complaintDetails: complaintDetails),
    );
  }
}
