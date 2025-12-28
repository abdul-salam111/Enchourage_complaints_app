import '../../../../core/shared/datasource/base_datasource.dart';

abstract interface class IRemoteHomeDataSource {
  Future<String> fetchData();
}

/// Concrete implementation of the remote home data source.
/// Extends BaseRemoteDataSource to inherit common API helpers.
class RemoteHomeDataSourceImpl extends BaseRemoteDataSource
    implements IRemoteHomeDataSource {
  RemoteHomeDataSourceImpl(super.dioHelper);

  @override
  Future<String> fetchData() async {
    return getApiHelper(
      url: 'https://jsonplaceholder.typicode.com/posts/1',
      fromJson: (json) => json['title'] as String,
    );
  }
}
