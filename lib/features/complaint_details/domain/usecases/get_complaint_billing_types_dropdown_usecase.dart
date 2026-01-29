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
