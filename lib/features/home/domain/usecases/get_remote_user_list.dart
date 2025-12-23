import 'package:flutter_template/core/core.dart';
import 'package:flutter_template/features/home/data/models/response_models/get_user_list/get_user_list.dart';
import 'package:fpdart/fpdart.dart';

import '../repositories/home_repository.dart';

class GetRemoteUserListUsecase implements Usecase<List<GetUserList>, NoParams> {
  final IHomeRepository repository;

  GetRemoteUserListUsecase(this.repository);

  @override
  Future<Either<AppException, List<GetUserList>>> call(NoParams params) {
    return repository.getUsersList();
  }
}
