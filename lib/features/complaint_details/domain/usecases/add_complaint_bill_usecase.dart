import 'package:enchourage_app/features/complaint_details/data/models/request_models/create_complaint_bill/add_complaint_bill_request.dart';
import 'package:enchourage_app/features/complaint_details/data/models/response_models/create_complaint_bill/create_complaint_bill_response.dart';

import '../../../../app_exports.dart';

class AddComplaintBillUsecase
    implements Usecase<CreateComplaintBillResponse, AddComplaintBillRequest> {
  final IComplaintDetailsRepository repository;

  AddComplaintBillUsecase({required this.repository});

  @override
  Future<Either<AppException, CreateComplaintBillResponse>> call(
    AddComplaintBillRequest complaintDetails,
  ) {
    return repository.createComplaintBill(complaintDetails: complaintDetails);
  }
}
