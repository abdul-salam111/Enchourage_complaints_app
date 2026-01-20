import '../../../../app_exports.dart';

class GetStreetListRemoteUsecase implements Usecase<StreetList, int> {
  final ICreateComplaintRepository repository;

  GetStreetListRemoteUsecase({required this.repository});

  @override
  Future<Either<AppException, StreetList>> call(int blockId) {
    return repository.getStreetList(blockId: blockId);
  }
}
