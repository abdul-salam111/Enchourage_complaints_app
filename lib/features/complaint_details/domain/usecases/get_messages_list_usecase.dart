import '../../../../app_exports.dart';

class GetMessagesListUsecase implements Usecase<MessagesList, int> {
  final IComplaintDetailsRepository repository;

  GetMessagesListUsecase({required this.repository});

  @override
  Future<Either<AppException, MessagesList>> call(int complaintId) {
    return repository.getMessagesList(complaintId: complaintId);
  }
}
