import '../../domain/repositories/home_repository.dart';
import '../datasources/remote_home_datasource.dart';

class HomeRepositoryImpl implements IHomeRepository {
  final IRemoteHomeDataSource dataSource;

  HomeRepositoryImpl({required this.dataSource});

  @override
  Future<String> getData() {
    return dataSource.fetchData();
  }
}
