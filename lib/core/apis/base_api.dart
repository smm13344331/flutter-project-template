import 'dart:io';
import 'dart:io' as io;

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';
import 'package:project_template/constants/constants.dart';
import 'package:project_template/helpers/helpers.dart';

class BaseAPI {
  late final String baseUrl;

  BaseAPI(String apiUrl, {bool useDefaultUrl = true}) {
    baseUrl = useDefaultUrl ? '${app.settings.baseUrl}/$apiUrl' : apiUrl;
  }

  Dio get dio {
    final Dio dio = Dio();
    dio.interceptors.clear();
    dio.options = BaseOptions(baseUrl: app.settings.baseUrl);
    dio.interceptors.addAll([
      LogInterceptor(
        logPrint: AppLogger.info,
        request: app.settings.dioLogInterceptorRequest,
        requestHeader: app.settings.dioLogInterceptorRequestHeader,
        requestBody: app.settings.dioLogInterceptorRequestBody,
        responseHeader: app.settings.dioLogInterceptorResponseHeader,
        responseBody: app.settings.dioLogInterceptorResponseBody,
      )
    ]);

    if (!kIsWeb) {
      (dio.httpClientAdapter as IOHttpClientAdapter).onHttpClientCreate =
          (io.HttpClient client) {
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
        return client;
      };
    }

    return dio;
  }

  void checkResponseError(Response response) {
    if (response.statusCode != 200) {
      final String errMessage =
          _handleError(response.statusCode, response.data);
      final error =
          'ERROR ${response.statusCode} - $errMessage:\n${response.statusMessage}';
      AppLogger.err(error);
      throw error;
    }
  }

  String _handleError(int? statusCode, dynamic error) {
    switch (statusCode) {
      case 400:
        return 'Bad request';
      case 401:
        return 'Unauthorized';
      case 403:
        return 'Forbidden';
      case 404:
        return error['message'];
      case 500:
        return 'Internal server error';
      case 502:
        return 'Bad gateway';
      default:
        return 'Oops something went wrong';
    }
  }
}
