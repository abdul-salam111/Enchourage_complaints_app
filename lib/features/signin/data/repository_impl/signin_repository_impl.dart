import 'package:flutter_template/core/shared/domain/repository/base_repository.dart';
import 'package:fpdart/fpdart.dart';

import '../../../../core/networks/exceptions/app_exceptions.dart';
import '../../domain/repositories/signin_repository.dart';
import '../datasources/signin_remote_datasource.dart';
import '../models/request_models/login_user_by_id/login_user_by_id.dart';
import '../models/response_models/login_response/login_response.dart';

class SigninRepositoryImpl extends BaseRepository implements ISigninRepository {
  final ISigninRemoteDataSource dataSource;

  SigninRepositoryImpl({required this.dataSource});

  @override
  Future<Either<AppException, LoginResponse>> signInUserById(
    LoginUserById loginUserById,
  ) {
    return execute(
      () => dataSource.signinUserById(loginUserById: loginUserById),
    );
  }
}
