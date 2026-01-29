import 'package:enchourage_app/features/complaint_details/data/models/response_models/bills_types_list/bills_types_list.dart';

import '../../../../app_exports.dart';

class GetComplaintBillingTypesDropdownUsecase
    implements Usecase<BillsTypesList, NoParams> {
  final IComplaintDetailsRepository repository;

  GetComplaintBillingTypesDropdownUsecase({required this.repository});

  @override
  Future<Either<AppException, BillsTypesList>> call(NoParams noParams) {
    return repository.getBillsTypesListDropdown();
  }
}
