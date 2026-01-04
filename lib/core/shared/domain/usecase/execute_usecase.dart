import '../../../../app_exports.dart';

Future<void> executeUseCase<T>({
  required Future<Either<AppException, T>> Function() useCase,
  required Function(T data) onSuccess,
  Function(AppException error)? onError,
  RxBool? loadingState,
  bool? showError = true,
}) async {
  try {
    if (loadingState != null) {
      loadingState.value = true;
    }

    final result = await useCase();

    result.fold(
      (error) {
        if (showError != null && showError) {
          AppToastsUtils.showErrorTop(error.toString());
        }
        if (onError != null) {
          onError(error);
        }
      },
      (success) {
        onSuccess(success);
      },
    );
  } finally {
    if (loadingState != null) {
      loadingState.value = false;
    }
  }
}
