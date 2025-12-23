import 'package:flutter/material.dart';
import 'package:another_flushbar/flushbar.dart';

class AppToastsUtils {
  static Flushbar<dynamic>? _currentFlushbar;
  // ✅ Dismiss any existing toast
  static void _dismissCurrentToast() {
    if (_currentFlushbar != null && _currentFlushbar!.isShowing()) {
      _currentFlushbar!.dismiss();
      _currentFlushbar = null;
    }
  }

  // ✅ SUCCESS TOAST
  static void showSuccessToast(BuildContext context, String message) {
    _dismissCurrentToast();
    _currentFlushbar = Flushbar(
      title: "Success",
      message: message,
      backgroundColor: Colors.green,
      duration: const Duration(seconds: 3),
      icon: const Icon(Icons.check_circle, color: Colors.white),
      flushbarPosition: FlushbarPosition.TOP,
      margin: const EdgeInsets.all(8),
      borderRadius: BorderRadius.circular(8),
    )..show(context).then((_) => _currentFlushbar = null);
  }

  // ✅ ERROR TOAST
  static void showErrorToast(BuildContext context, String message) {
    _dismissCurrentToast();
    _currentFlushbar = Flushbar(
      title: "Error",
      message: message,
      backgroundColor: Colors.red,
      duration: const Duration(seconds: 3),
      icon: const Icon(Icons.error, color: Colors.white),
      flushbarPosition: FlushbarPosition.TOP,
      margin: const EdgeInsets.all(8),
      borderRadius: BorderRadius.circular(8),
    )..show(context).then((_) => _currentFlushbar = null);
  }

  // ✅ WARNING TOAST
  static void showWarningToast(BuildContext context, String message) {
    _dismissCurrentToast();
    _currentFlushbar = Flushbar(
      title: "Info",
      message: message,
      backgroundColor: Colors.orange,
      duration: const Duration(seconds: 3),
      icon: const Icon(Icons.warning, color: Colors.white),
      flushbarPosition: FlushbarPosition.TOP,
      margin: const EdgeInsets.all(8),
      borderRadius: BorderRadius.circular(8),
    )..show(context).then((_) => _currentFlushbar = null);
  }
}
