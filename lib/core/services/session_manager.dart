import 'dart:convert';
import '../../app_exports.dart';

class SessionController {
  UserEntity? _userEntity; // Private
  UserEntity? get user => _userEntity; // Public getter

  bool _isLoggedIn = false;
  bool get isLoggedIn => _isLoggedIn;

  String? get userId => _userEntity?.id.toString();
  String? get userToken => _userEntity?.token;

  static final SessionController _session = SessionController._internal();
  SessionController._internal();

  static SessionController get instance => _session;
  factory SessionController() => _session;

  /// Save user entity to storage
  Future<void> saveUser(UserEntity user) async {
    try {
      await storage.setValues(
        StorageKeys.userDetails,
        jsonEncode(user.toJson()),
      );
      await storage.setValues(StorageKeys.loggedIn, 'true');
      await storage.setValues(StorageKeys.token, user.token);

      // Update in-memory state
      _userEntity = user;
      _isLoggedIn = true;
    } catch (e) {
      throw Exception('Failed to save user: $e');
    }
  }

  /// Load user from storage
  Future<void> loadUser() async {
    try {
      final userData = await storage.readValues(StorageKeys.userDetails);
      final isLoggedIn = await storage.readValues(StorageKeys.loggedIn);

      if (userData != null && isLoggedIn == 'true') {
        _userEntity = UserEntity.fromJson(jsonDecode(userData));
        _isLoggedIn = true;
      } else {
        _userEntity = null;
        _isLoggedIn = false;
      }
    } catch (e) {
      _userEntity = null;
      _isLoggedIn = false;
      throw Exception('Failed to load user: $e');
    }
  }

  /// Clear session (logout)
  Future<void> clearSession() async {
    try {
      await storage.clearValues(StorageKeys.userDetails);
      await storage.clearValues(StorageKeys.loggedIn);
      await storage.clearValues(StorageKeys.token);

      _userEntity = null;
      _isLoggedIn = false;
    } catch (e) {
      throw Exception('Failed to clear session: $e');
    }
  }

  /// Check if user is authenticated
  bool get isAuthenticated => _isLoggedIn && _userEntity != null;

  Future<void> signOut() async {
    await clearSession();
    AppNavigator.goNamed(RouteNames.signin);
  }
}
