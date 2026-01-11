import '../../../../app_exports.dart';

class AllComplaintsUsecase implements Usecase<AllComplaintsResponse, AllComplaintsParams> {
  final IAllComplaintsRepository repository;

  AllComplaintsUsecase({required this.repository});

  @override
  Future<Either<AppException, AllComplaintsResponse>> call(AllComplaintsParams params) {
    return repository.performAction(params: params);
  }
}
