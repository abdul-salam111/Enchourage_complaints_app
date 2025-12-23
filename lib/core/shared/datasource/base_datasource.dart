import 'package:flutter_template/core/core.dart';

import '../../networks/network_manager/dio_helper.dart';

// ============================================================================
// STEP 1: Simple Base Class
// ============================================================================

abstract class BaseRemoteDataSource {
  final DioHelper dioHelper;

  BaseRemoteDataSource(this.dioHelper);

  /// Override karke token provide karo (optional)
  /// Example: () => yourCubit.token or () => prefs.getString('token')
  String? getAuthToken() => null;

  /// Override karke custom error handling (optional)
  Exception handleError(dynamic error) => AppException(error.toString());

  // ========================================================================
  // Core Methods - Bas 4 methods, super simple! 🚀
  // ========================================================================

  /// GET request - List return karega
  Future<List<T>> getList<T>({
    required String url,
    required T Function(Map<String, dynamic>) fromJson,
    String? token,
  }) async {
    try {
      final response = await dioHelper.getApi(
        url: url,
        isAuthRequired: token != null || getAuthToken() != null,
        authToken: token ?? getAuthToken(),
      );

      if (response is List) {
        return response
            .map((e) => fromJson(e as Map<String, dynamic>))
            .toList();
      }
      throw Exception("Expected List but got ${response.runtimeType}");
    } catch (e) {
      throw handleError(e);
    }
  }

  /// POST request - List return karega
  Future<List<T>> postList<T>({
    required String url,
    required T Function(Map<String, dynamic>) fromJson,
    Object? body,
    String? token,
  }) async {
    try {
      final response = await dioHelper.postApi(
        url: url,
        isAuthRequired: token != null || getAuthToken() != null,
        authToken: token ?? getAuthToken(),
        requestBody: body,
      );

      if (response is List) {
        return response
            .map((e) => fromJson(e as Map<String, dynamic>))
            .toList();
      }
      throw Exception("Expected List but got ${response.runtimeType}");
    } catch (e) {
      throw handleError(e);
    }
  }

  /// GET request - Single object return karega
  Future<T> getObject<T>({
    required String url,
    required T Function(Map<String, dynamic>) fromJson,
    String? token,
  }) async {
    try {
      final response = await dioHelper.getApi(
        url: url,
        isAuthRequired: token != null || getAuthToken() != null,
        authToken: token ?? getAuthToken(),
      );

      return fromJson(response as Map<String, dynamic>);
    } catch (e) {
      throw handleError(e);
    }
  }

  /// POST request - Single object return karega
  Future<T> postObject<T>({
    required String url,
    required T Function(Map<String, dynamic>) fromJson,
    Object? body,
    String? token,
  }) async {
    try {
      final response = await dioHelper.postApi(
        url: url,
        isAuthRequired: token != null || getAuthToken() != null,
        authToken: token ?? getAuthToken(),
        requestBody: body,
      );

      return fromJson(response as Map<String, dynamic>);
    } catch (e) {
      throw handleError(e);
    }
  }

  /// PUT request - Single object return karega
  Future<T> putObject<T>({
    required String url,
    required T Function(Map<String, dynamic>) fromJson,
    Object? body,
    String? token,
  }) async {
    try {
      final response = await dioHelper.putApi(
        url: url,
        isAuthRequired: token != null || getAuthToken() != null,
        authToken: token ?? getAuthToken(),
        requestBody: body,
      );

      return fromJson(response as Map<String, dynamic>);
    } catch (e) {
      throw handleError(e);
    }
  }

  /// DELETE request
  Future<void> delete({
    required String url,
    Object? body,
    String? token,
  }) async {
    try {
      await dioHelper.deleteApi(
        url: url,
        isAuthRequired: token != null || getAuthToken() != null,
        authToken: token ?? getAuthToken(),
        requestBody: body,
      );
    } catch (e) {
      throw handleError(e);
    }
  }

  /// PATCH request
  Future<T> patchObject<T>({
    required String url,
    required T Function(Map<String, dynamic>) fromJson,
    Object? body,
    String? token,
  }) async {
    try {
      final response = await dioHelper.patchApi(
        url: url,
        isAuthRequired: token != null || getAuthToken() != null,
        authToken: token ?? getAuthToken(),
        requestBody: body,
      );

      return fromJson(response as Map<String, dynamic>);
    } catch (e) {
      throw handleError(e);
    }
  }

  /// Multipart request (for file uploads)
  Future<T> multipart<T>({
    required String url,
    required T Function(Map<String, dynamic>) fromJson,
    required Object body,
    String? token,
  }) async {
    try {
      final response = await dioHelper.multiPartRequest(
        url: url,
        requestBody: body,
        isAuthRequired: token != null || getAuthToken() != null,
        authToken: token ?? getAuthToken(),
      );

      return fromJson(response as Map<String, dynamic>);
    } catch (e) {
      throw handleError(e);
    }
  }
}
