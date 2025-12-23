import 'package:fpdart/fpdart.dart';

import '../../../networks/exceptions/app_exceptions.dart';

// ============================================================================
// BASE REPOSITORY - Try-Catch Free Repository Layer! 🚀
// ============================================================================

/// Generic base repository with automatic Either handling
abstract class BaseRepository {
  /// Override this to customize error handling
  AppException handleError(dynamic error) {
    if (error is AppException) {
      return error;
    }
    return AppException(error.toString());
  }

  // ========================================================================
  // Core Execute Method - Automatic Either Wrapping! 🎯
  // ========================================================================

  /// Execute any operation and automatically wrap in Either
  Future<Either<AppException, T>> execute<T>(
    Future<T> Function() operation,
  ) async {
    try {
      final result = await operation();
      return Right(result);
    } catch (e) {
      return Left(handleError(e));
    }
  }

  /// Execute with custom error message
  Future<Either<AppException, T>> executeWithMessage<T>(
    Future<T> Function() operation,
    String errorMessage,
  ) async {
    try {
      final result = await operation();
      return Right(result);
    } catch (e) {
      return Left(AppException('$errorMessage: ${e.toString()}'));
    }
  }

  /// Execute and transform result
  Future<Either<AppException, R>> executeAndTransform<T, R>(
    Future<T> Function() operation,
    R Function(T) transform,
  ) async {
    try {
      final result = await operation();
      return Right(transform(result));
    } catch (e) {
      return Left(handleError(e));
    }
  }
}
