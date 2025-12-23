import 'package:fpdart/fpdart.dart';

import '../../../../core/networks/exceptions/app_exceptions.dart';
import '../../../../core/shared/domain/repository/base_repository.dart';
import '../../domain/repositories/home_repository.dart';
import '../datasources/remote_home_datasource.dart';
import '../models/response_models/get_user_list/get_user_list.dart';

class HomeRepositoryImpl extends BaseRepository implements IHomeRepository {
  final IRemoteHomeDataSource dataSource;

  HomeRepositoryImpl(this.dataSource);

  @override
  Future<Either<AppException, List<GetUserList>>> getUsersList() {
    return execute(() => dataSource.fetchUserList());
  }
}
