import '../../../../app_exports.dart';

class AddMesesage {
  int complaintId;
  String message;
  AddMesesage({required this.complaintId, required this.message});
}

class AddNewMessageUsecase
    implements Usecase<SentMessageResponse, AddMesesage> {
  final IComplaintDetailsRepository repository;

  AddNewMessageUsecase({required this.repository});

  @override
  Future<Either<AppException, SentMessageResponse>> call(
    AddMesesage addMesesage,
  ) {
    return repository.addNewMessageToComplaint(
      complaintId: addMesesage.complaintId,
      message: addMesesage.message,
    );
  }
}
