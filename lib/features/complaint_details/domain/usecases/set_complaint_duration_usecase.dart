import '../../../../app_exports.dart';

class ChangeDuration {
  final int complaintId;
  final String durationKey;
  ChangeDuration({required this.durationKey, required this.complaintId});
}

class SetComplaintDurationUsecase
    implements Usecase<SetDurationResponse, ChangeDuration> {
  final IComplaintDetailsRepository repository;

  SetComplaintDurationUsecase({required this.repository});

  @override
  Future<Either<AppException, SetDurationResponse>> call(
    ChangeDuration changeDuration,
  ) {
    return repository.setComplaintDuration(
      complaintId: changeDuration.complaintId,
      durationKey: changeDuration.durationKey,
    );
  }
}
