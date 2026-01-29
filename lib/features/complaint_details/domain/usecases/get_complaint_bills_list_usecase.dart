import 'package:enchourage_app/features/complaint_details/data/models/response_models/complaint_bills_list/complaint_bills_list.dart';

import '../../../../app_exports.dart';

class GetComplaintBillsListUsecase implements Usecase<ComplaintBillsList, int> {
  final IComplaintDetailsRepository repository;

  GetComplaintBillsListUsecase({required this.repository});

  @override
  Future<Either<AppException, ComplaintBillsList>> call(int complaintId) {
    return repository.getComplaintBillsList(complaintId: complaintId);
  }
}
