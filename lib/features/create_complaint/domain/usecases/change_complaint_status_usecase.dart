import '../../../../app_exports.dart';

class ChangeComplaintStatusUsecase
    implements Usecase<ChangeComplaintStatus, ChangeComplaintStatus> {
  final ICreateComplaintRepository repository;

  ChangeComplaintStatusUsecase({required this.repository});

  @override
  Future<Either<AppException, ChangeComplaintStatus>> call(
    ChangeComplaintStatus changeComplaintStatus,
  ) {
    return repository.changeComplaintStatus(
      changeComplaintStatus: changeComplaintStatus,
    );
  }
}
