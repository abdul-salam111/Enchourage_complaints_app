/// Abstract data source defines the contract for remote sign-in operations.
abstract interface class IRemoteSignInDataSource {
  Future<bool> login(String email, String password);
}

/// Concrete implementation of the remote sign-in data source.
class RemoteSignInDataSourceImpl implements IRemoteSignInDataSource {
  @override
  Future<bool> login(String email, String password) async {
    try {
        return true;
    } catch (error) {
      throw Exception('Login error: ${error.toString()}');
    }
  }
}
