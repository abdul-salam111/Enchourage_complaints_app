import '../../../../app_exports.dart';

class GetResidentOwnerRemoteUsecas implements Usecase<ResidentOwner, int> {
  final ICreateComplaintRepository repository;

  GetResidentOwnerRemoteUsecas({required this.repository});

  @override
  Future<Either<AppException, ResidentOwner>> call(int plotNo) {
    return repository.getResidentOwner(plotId: plotNo);
  }
}
