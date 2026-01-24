import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'prints.dart';

Dio getDio() {
  Dio dio = Dio(
    BaseOptions(
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(seconds: 30),
    ),
  );

  // Add HTTP adapter configuration for better connection handling
  dio.httpClientAdapter = IOHttpClientAdapter(
    createHttpClient: () {
      final client = HttpClient();
      client.idleTimeout = const Duration(seconds: 10);
      client.connectionTimeout = const Duration(seconds: 30);
      return client;
    },
  );

  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
        printValue(tag: 'API URL:', '${options.uri}');
        printValue(tag: 'HEADER:', options.headers);

        // Handle different request body types
        try {
          if (options.data is FormData) {
            // For FormData, log fields and files separately
            final formData = options.data as FormData;
            printValue(tag: 'REQUEST TYPE:', 'FormData (Multipart)');

            // Log form fields
            if (formData.fields.isNotEmpty) {
              final fieldsMap = Map.fromEntries(formData.fields);
              printValue(tag: 'FORM FIELDS:', jsonEncode(fieldsMap));
            }

            // Log files info
            if (formData.files.isNotEmpty) {
              final filesInfo = formData.files.map((file) {
                return {
                  'fieldName': file.key,
                  'filename': file.value.filename,
                  'contentType': file.value.contentType?.toString(),
                };
              }).toList();
              printValue(tag: 'FILES:', jsonEncode(filesInfo));
            }
          } else if (options.data != null) {
            // For regular JSON data
            printValue(tag: 'REQUEST BODY:', jsonEncode(options.data));
          } else {
            printValue(tag: 'REQUEST BODY:', 'No body data');
          }
        } catch (e) {
          printValue(tag: "Request Body Error:", e.toString());
        }

        return handler.next(options);
      },

      onResponse: (Response response, ResponseInterceptorHandler handler) {
        printValue(tag: 'API RESPONSE:', response.data);
        return handler.next(response);
      },

      onError: (DioException e, ErrorInterceptorHandler handler) {
        printValue(tag: 'STATUS CODE:', "${e.response?.statusCode ?? ""}");
        printValue(tag: 'ERROR DATA:', "${e.response?.data ?? ""}");
        printValue(tag: 'ERROR MESSAGE:', e.message ?? "");
        return handler.next(e);
      },
    ),
  );

  return dio;
}
