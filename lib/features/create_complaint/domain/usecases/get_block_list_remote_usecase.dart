import '../../../../app_exports.dart';

class GetBlockListRemoteUsecase implements Usecase<BlockList, NoParams> {
  final ICreateComplaintRepository repository;

  GetBlockListRemoteUsecase({required this.repository});

  @override
  Future<Either<AppException, BlockList>> call(NoParams params) {
    return repository.getBlockList();
  }
}
