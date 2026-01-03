// ignore_for_file: unintended_html_in_doc_comment

import 'package:fpdart/fpdart.dart';
import '../../../networks/exceptions/app_exceptions.dart';

/* -------------------------------------------------------------------------- */
/*                             Base Repository                                 */
/* -------------------------------------------------------------------------- */

abstract class BaseRepository {
  /// Execute repository call with automatic error handling
  /// Wraps result in Either <AppException, T>
  Future<Either<AppException, T>> execute<T>({
    required Future<T> Function() call,
  }) async {
    try {
      final result = await call();
      return Right(result);
    } on AppException catch (e) {
      return Left(e);
    } catch (e) {
      return Left(AppException(e.toString()));
    }
  }
}
