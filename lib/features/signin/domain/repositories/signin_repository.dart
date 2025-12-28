import 'package:flutter_template/core/core.dart';
import 'package:flutter_template/features/signin/data/models/request_models/login_user_by_id/login_user_by_id.dart';
import 'package:flutter_template/features/signin/data/models/response_models/login_response/login_response.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class ISigninRepository {
  Future<Either<AppException,LoginResponse>> signInUserById(LoginUserById loginUserById);
}
