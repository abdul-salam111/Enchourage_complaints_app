import 'package:flutter_template/core/constants/api_endpoints.dart';
import 'package:flutter_template/features/signin/data/models/request_models/login_user_by_id/login_user_by_id.dart';
import 'package:flutter_template/features/signin/data/models/response_models/login_response/login_response.dart';

import '../../../../core/shared/datasource/base_datasource.dart';

abstract interface class ISigninRemoteDataSource {
  Future<LoginResponse> signinUserById({required LoginUserById loginUserById});
}

class SigninRemoteDataSourceImpl extends BaseRemoteDataSource
    implements ISigninRemoteDataSource {
  SigninRemoteDataSourceImpl(super.dioHelper);

  @override
  Future<LoginResponse> signinUserById({
    required LoginUserById loginUserById,
  }) async {
    return await postApiHelper<LoginResponse>(
      url: ApiKeys.loginByUid,
      fromJson: (json) => LoginResponse.fromJson(json),
      body: loginUserById.toJson(),
    );
  }
}
