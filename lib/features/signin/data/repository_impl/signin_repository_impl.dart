import '../../domain/repositories/signin_repository.dart';
import '../datasources/remote_signin_datasource.dart';

class SignInRepositoryImpl implements SignInRepository {
  final IRemoteSignInDataSource dataSource;

  SignInRepositoryImpl(this.dataSource);

  @override
  Future<bool> signIn(String email, String password) {
    return dataSource.login(email, password);
  }
}
