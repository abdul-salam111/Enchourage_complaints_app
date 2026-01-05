// import 'dart:async';

// import 'package:flutter/material.dart';

// import '../../app_exports.dart';

// class SplashServices {
//   void isLoggedIn(BuildContext context) {
//     Future.delayed(Duration(seconds: 2), () {
//       checkLoginStatus(context);
//     });
//   }

//   Future<void> checkLoginStatus(BuildContext context) async {
//     try {
//       await SessionController().getUserfromSharedpref();

//       if (SessionController().islogin == true) {
//         Get.offAllNamed(RouteNames.signin);
//       } else {
//         Get.offAllNamed(RouteNames.signin);
//       }
//     } catch (e) {
//       debugPrint('Error in checkLoginStatus: $e');
//     }
//   }
// }
