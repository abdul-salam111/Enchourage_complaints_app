abstract interface class SignInRepository {
  Future<bool> signIn(String email, String password);
}
