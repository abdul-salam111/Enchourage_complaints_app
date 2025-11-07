import 'package:fpdart/fpdart.dart';
import '../../../data/exceptions/app_exceptions.dart';

abstract interface class Usecase<SuccessType, Params> {
  Future<Either<AppException, SuccessType>> call(Params params);
}

class NoParams {}
