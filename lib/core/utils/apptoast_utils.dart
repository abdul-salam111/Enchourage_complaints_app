import 'package:flutter/material.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:get/get.dart';

// ============================================================================
// TOAST POSITION ENUM
// ============================================================================

enum ToastPosition {
  top,
  bottom,
  topLeft,
  topRight,
  bottomLeft,
  bottomRight,
  center,
}

// ============================================================================
// TOAST TYPE ENUM
// ============================================================================

enum ToastType { success, error, warning, info, custom }

// ============================================================================
// COMPLETE TOAST UTILITY
// ============================================================================

class AppToastsUtils {
  static Flushbar<dynamic>? _currentFlushbar;

  // ==========================================================================
  // DISMISS CURRENT TOAST
  // ==========================================================================

  static void _dismissCurrentToast() {
    if (_currentFlushbar != null && _currentFlushbar!.isShowing()) {
      _currentFlushbar!.dismiss();
      _currentFlushbar = null;
    }
  }

  // ==========================================================================
  // MAIN SHOW METHOD (NO CONTEXT)
  // ==========================================================================

  static void show({
    required String message,
    String? title,
    ToastType type = ToastType.info,
    ToastPosition position = ToastPosition.top,
    Duration duration = const Duration(seconds: 3),
    Color? backgroundColor,
    Color? textColor,
    IconData? icon,
    Color? iconColor,
    VoidCallback? onTap,
    Widget? mainButton,
    bool isDismissible = true,
    bool showProgressIndicator = false,
    double? maxWidth,
  }) {
    _dismissCurrentToast();

    final context = Get.context!;
    final config = _getToastConfig(type);
    final positionConfig = _getPositionConfig(position);

    _currentFlushbar = Flushbar(
      title: title ?? config.title,
      message: message,
      backgroundColor: backgroundColor ?? config.backgroundColor,
      messageColor: textColor ?? Colors.white,
      titleColor: textColor ?? Colors.white,
      icon: icon != null
          ? Icon(icon, color: iconColor ?? Colors.white)
          : Icon(config.icon, color: iconColor ?? Colors.white),
      duration: duration,
      flushbarPosition: positionConfig.flushbarPosition,
      margin: positionConfig.margin,
      borderRadius: BorderRadius.circular(12),
      isDismissible: isDismissible,
      dismissDirection: positionConfig.dismissDirection,
      animationDuration: const Duration(milliseconds: 400),
      forwardAnimationCurve: Curves.easeOutBack,
      reverseAnimationCurve: Curves.fastOutSlowIn,
      boxShadows: const [
        BoxShadow(color: Colors.black26, blurRadius: 8, offset: Offset(0, 2)),
      ],
      mainButton: mainButton,
      onTap: onTap != null ? (_) => onTap() : null,
      showProgressIndicator: showProgressIndicator,
      progressIndicatorBackgroundColor: Colors.white24,
      progressIndicatorValueColor: AlwaysStoppedAnimation<Color>(
        textColor ?? Colors.white,
      ),
      maxWidth: maxWidth,
    )..show(context).then((_) => _currentFlushbar = null);
  }

  // ==========================================================================
  // BASIC TOAST METHODS
  // ==========================================================================

  static void showSuccess(
    String message, {
    ToastPosition position = ToastPosition.top,
  }) {
    show(message: message, type: ToastType.success, position: position);
  }

  static void showError(
    String message, {
    ToastPosition position = ToastPosition.top,
  }) {
    show(message: message, type: ToastType.error, position: position);
  }

  static void showWarning(
    String message, {
    ToastPosition position = ToastPosition.top,
  }) {
    show(message: message, type: ToastType.warning, position: position);
  }

  static void showInfo(
    String message, {
    ToastPosition position = ToastPosition.top,
  }) {
    show(message: message, type: ToastType.info, position: position);
  }

  // ==========================================================================
  // POSITION SHORTCUTS
  // ==========================================================================

  static void showSuccessTop(String message) =>
      showSuccess(message, position: ToastPosition.top);

  static void showSuccessBottom(String message) =>
      showSuccess(message, position: ToastPosition.bottom);

  static void showErrorTop(String message) =>
      showError(message, position: ToastPosition.top);

  static void showErrorBottom(String message) =>
      showError(message, position: ToastPosition.bottom);

  static void showSuccessTopLeft(String message) =>
      showSuccess(message, position: ToastPosition.topLeft);

  static void showSuccessTopRight(String message) =>
      showSuccess(message, position: ToastPosition.topRight);

  static void showSuccessBottomLeft(String message) =>
      showSuccess(message, position: ToastPosition.bottomLeft);

  static void showSuccessBottomRight(String message) =>
      showSuccess(message, position: ToastPosition.bottomRight);

  // ==========================================================================
  // CENTER TOAST
  // ==========================================================================

  static void showCenter(String message, {ToastType type = ToastType.info}) {
    show(message: message, type: type, position: ToastPosition.center);
  }

  // ==========================================================================
  // SPECIAL TOASTS
  // ==========================================================================

  static void showLoading(
    String message, {
    ToastPosition position = ToastPosition.top,
  }) {
    show(
      message: message,
      title: 'Loading',
      type: ToastType.info,
      position: position,
      duration: const Duration(days: 1),
      showProgressIndicator: true,
      isDismissible: false,
    );
  }

  static void showWithAction({
    required String message,
    required String actionText,
    required VoidCallback onActionPressed,
    ToastType type = ToastType.info,
    ToastPosition position = ToastPosition.bottom,
  }) {
    show(
      message: message,
      type: type,
      position: position,
      mainButton: TextButton(
        onPressed: () {
          dismissCurrent();
          onActionPressed();
        },
        child: const Text('ACTION', style: TextStyle(color: Colors.white)),
      ),
    );
  }

  static void showPersistent(
    String message, {
    ToastType type = ToastType.info,
    ToastPosition position = ToastPosition.top,
  }) {
    show(
      message: message,
      type: type,
      position: position,
      duration: const Duration(days: 1),
    );
  }

  static void showLong(
    String message, {
    ToastType type = ToastType.info,
    ToastPosition position = ToastPosition.top,
  }) {
    show(
      message: message,
      type: type,
      position: position,
      duration: const Duration(seconds: 5),
    );
  }

  static void showShort(
    String message, {
    ToastType type = ToastType.info,
    ToastPosition position = ToastPosition.top,
  }) {
    show(
      message: message,
      type: type,
      position: position,
      duration: const Duration(seconds: 1),
    );
  }

  // ==========================================================================
  // HELPERS
  // ==========================================================================

  static void dismissCurrent() {
    _dismissCurrentToast();
  }

  static _ToastConfig _getToastConfig(ToastType type) {
    switch (type) {
      case ToastType.success:
        return _ToastConfig(
          title: 'Success',
          backgroundColor: Colors.green,
          icon: Icons.check_circle,
        );
      case ToastType.error:
        return _ToastConfig(
          title: 'Error',
          backgroundColor: Colors.red,
          icon: Icons.error,
        );
      case ToastType.warning:
        return _ToastConfig(
          title: 'Warning',
          backgroundColor: Colors.orange,
          icon: Icons.warning,
        );
      case ToastType.info:
        return _ToastConfig(
          title: 'Info',
          backgroundColor: Colors.blue,
          icon: Icons.info,
        );
      case ToastType.custom:
        return _ToastConfig(
          title: '',
          backgroundColor: Colors.grey,
          icon: Icons.notifications,
        );
    }
  }

  static _PositionConfig _getPositionConfig(ToastPosition position) {
    final media = MediaQueryData.fromView(
      WidgetsBinding.instance.platformDispatcher.views.first,
    );

    switch (position) {
      case ToastPosition.top:
        return _PositionConfig(
          FlushbarPosition.TOP,
          const EdgeInsets.all(8),
          FlushbarDismissDirection.VERTICAL,
        );

      case ToastPosition.bottom:
        return _PositionConfig(
          FlushbarPosition.BOTTOM,
          const EdgeInsets.all(8),
          FlushbarDismissDirection.VERTICAL,
        );

      case ToastPosition.topLeft:
        return _PositionConfig(
          FlushbarPosition.TOP,
          const EdgeInsets.only(left: 8, top: 8, right: 200),
          FlushbarDismissDirection.HORIZONTAL,
        );

      case ToastPosition.topRight:
        return _PositionConfig(
          FlushbarPosition.TOP,
          const EdgeInsets.only(left: 200, top: 8, right: 8),
          FlushbarDismissDirection.HORIZONTAL,
        );

      case ToastPosition.bottomLeft:
        return _PositionConfig(
          FlushbarPosition.BOTTOM,
          const EdgeInsets.only(left: 8, bottom: 8, right: 200),
          FlushbarDismissDirection.HORIZONTAL,
        );

      case ToastPosition.bottomRight:
        return _PositionConfig(
          FlushbarPosition.BOTTOM,
          const EdgeInsets.only(left: 200, bottom: 8, right: 8),
          FlushbarDismissDirection.HORIZONTAL,
        );

      case ToastPosition.center:
        return _PositionConfig(
          FlushbarPosition.TOP,
          EdgeInsets.symmetric(
            horizontal: 16,
            vertical: media.size.height * 0.4,
          ),
          FlushbarDismissDirection.VERTICAL,
        );
    }
  }
}

// ============================================================================
// HELPER CLASSES
// ============================================================================

class _ToastConfig {
  final String title;
  final Color backgroundColor;
  final IconData icon;

  _ToastConfig({
    required this.title,
    required this.backgroundColor,
    required this.icon,
  });
}

class _PositionConfig {
  final FlushbarPosition flushbarPosition;
  final EdgeInsets margin;
  final FlushbarDismissDirection dismissDirection;

  _PositionConfig(this.flushbarPosition, this.margin, this.dismissDirection);
}
