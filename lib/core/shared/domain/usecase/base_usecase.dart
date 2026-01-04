import '../../../../app_exports.dart';

abstract interface class Usecase<SuccessType, Params> {
  Future<Either<AppException, SuccessType>> call(Params params);
}

class NoParams {}
