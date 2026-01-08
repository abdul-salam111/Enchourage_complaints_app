import '../../../../app_exports.dart';

/// Mixin for automatic state management
mixin UseCaseExecutor on ChangeNotifier {
  ApiStatus _status = ApiStatus.initial;
  AppException? _error;

  ApiStatus get status => _status;
  AppException? get error => _error;
  bool get isLoading => _status == ApiStatus.loading;
  bool get isSuccess => _status == ApiStatus.success;
  bool get isError => _status == ApiStatus.error;

  /// Execute UseCase - Automatic loading management! 🔥
  /// ✨ NO CONTEXT NEEDED ANYMORE!
  Future<T?> execute<T>({
    required Future<Either<AppException, T>> Function() call,
    Function(T data)? onSuccess,
    Function(AppException error)? onError,
    bool showError = true,
    String? successMessage,
  }) async {
    _status = ApiStatus.loading;
    _error = null;
    notifyListeners();

    try {
      final result = await call();

      return result.fold(
        (error) {
          _status = ApiStatus.error;
          _error = error;
          notifyListeners();

          if (showError) {
            AppToastsUtils.error(error.toString()); // 🎯 No context!
          }
          onError?.call(error);
          return null;
        },
        (data) {
          _status = ApiStatus.success;
          _error = null;
          notifyListeners();

          // Optional success message
          if (successMessage != null) {
            AppToastsUtils.success(successMessage);
          }

          onSuccess?.call(data);
          return data;
        },
      );
    } catch (e) {
      _status = ApiStatus.error;
      _error = AppException(e.toString());
      notifyListeners();

      if (showError) {
        AppToastsUtils.error(e.toString());
      }
      return null;
    }
  }

  /// Multiple calls without changing loading state
  Future<T?> executeQuiet<T>({
    required Future<Either<AppException, T>> Function() call,
    Function(T data)? onSuccess,
    Function(AppException error)? onError,
    bool showError = false,
    String? successMessage,
  }) async {
    try {
      final result = await call();

      return result.fold(
        (error) {
          if (showError) {
            AppToastsUtils.error(error.toString());
          }
          onError?.call(error);
          return null;
        },
        (data) {
          if (successMessage != null) {
            AppToastsUtils.success(successMessage);
          }
          onSuccess?.call(data);
          return data;
        },
      );
    } catch (e) {
      if (showError) {
        AppToastsUtils.error(e.toString());
      }
      return null;
    }
  }

  void resetState() {
    _status = ApiStatus.initial;
    _error = null;
    notifyListeners();
  }
}
