import 'package:flutter_template/features/signin/domain/repositories/signin_repository.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../core/core.dart';

import '../../data/models/request_models/login_user_by_id/login_user_by_id.dart';
import '../../data/models/response_models/login_response/login_response.dart';

class SigninRemoteUsecase implements Usecase<LoginResponse, LoginUserById> {
  final ISigninRepository iSigninRepository;
  SigninRemoteUsecase(this.iSigninRepository);
  @override
  Future<Either<AppException, LoginResponse>> call(
    LoginUserById loginUserById,
  ) async {
    return await iSigninRepository.signInUserById(loginUserById);
  }
}
