import 'dart:convert';

import '../../app_exports.dart';

class SessionController {
  UserEntity getUserDetails = UserModel();

  static final SessionController _session = SessionController._internal();
  bool islogin = false;
  String? userId;
  String? userToken;

  SessionController._internal();

  static SessionController get instance => _session;

  factory SessionController() {
    return _session;
  }

  Future<void> saveUserInStorage(UserModel user) async {
    await storage.setValues(StorageKeys.userDetails, jsonEncode(user));
    await storage.setValues(StorageKeys.loggedIn, 'true');
    await storage.setValues(
      StorageKeys.token,
      user.data?.token.toString() ?? "",
    );
  }

  Future<void> getUserfromSharedpref() async {
    try {
      final userData = await storage.readValues(StorageKeys.userDetails);
      if (userData != null) {
        SessionController().getUserDetails = UserModel.fromJson(
          jsonDecode(userData),
        );
      }
      final isLoggedIn = await storage.readValues(StorageKeys.loggedIn);
      SessionController().islogin = (isLoggedIn == 'true' ? true : false);
    } catch (e) {
      throw Exception(e);
    }
  }
}
