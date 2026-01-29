import 'package:enchourage_app/features/complaint_details/data/models/request_models/create_complaint_bill/add_complaint_bill_request.dart';
import 'package:enchourage_app/features/complaint_details/data/models/response_models/bills_types_list/bills_types_list.dart';
import 'package:enchourage_app/features/complaint_details/data/models/response_models/complaint_bills_list/complaint_bills_list.dart';
import 'package:enchourage_app/features/complaint_details/data/models/response_models/complaint_property_list/complaint_property_list.dart';
import 'package:enchourage_app/features/complaint_details/data/models/response_models/create_complaint_bill/create_complaint_bill_response.dart';

import '../../../../app_exports.dart';

abstract interface class IComplaintDetailsRepository {
  Future<Either<AppException, ViewComplaint>> getComplaintDetails({
    required int complaintId,
  });

  Future<Either<AppException, SentMessageResponse>> addNewMessageToComplaint({
    required int complaintId,
    required String message,
  });

  Future<Either<AppException, SetDurationResponse>> setComplaintDuration({
    required int complaintId,
    required String durationKey,
  });

  Future<Either<AppException, MessagesList>> getMessagesList({
    required int complaintId,
  });
  Future<Either<AppException, ComplaintBillsList>> getComplaintBillsList({
    required int complaintId,
  });
  Future<Either<AppException, BillsTypesList>> getBillsTypesListDropdown();

  Future<Either<AppException, ComplaintPropertyList>> getComplaintPropertyList({
    required int complaintId,
  });

  Future<Either<AppException, CreateComplaintBillResponse>>
  createComplaintBill({required AddComplaintBillRequest complaintDetails});
}
