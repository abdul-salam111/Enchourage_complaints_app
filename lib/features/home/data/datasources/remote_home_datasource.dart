import 'package:flutter_template/features/home/data/models/response_models/get_user_list/get_user_list.dart';
import '../../../../core/networks/network_manager/dio_helper.dart';
import '../../../../core/shared/datasource/base_datasource.dart';

/// Abstract data source defines the contract for remote home operations.
abstract interface class IRemoteHomeDataSource {
  Future<List<GetUserList>> fetchUserList();
}

/// Concrete implementation of the remote home data source.
class RemoteHomeDataSourceImpl extends BaseRemoteDataSource
    implements IRemoteHomeDataSource {
  RemoteHomeDataSourceImpl({required DioHelper dioHelper}) : super(dioHelper);

  @override
  Future<List<GetUserList>> fetchUserList() {
    return getList(
      url: "https://jsonplaceholder.typicode.com/users",
      fromJson: GetUserList.fromJson,
    );
  }
}
