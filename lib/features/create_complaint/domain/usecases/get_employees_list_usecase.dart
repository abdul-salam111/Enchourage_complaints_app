import '../../../../app_exports.dart';

class GetEmployeesListUsecase implements Usecase<List<Employees>, NoParams> {
  final ICreateComplaintRepository repository;

  GetEmployeesListUsecase({required this.repository});

  @override
  Future<Either<AppException, List<Employees>>> call(NoParams noParams) {
    return repository.getEmployeesList();
  }
}
