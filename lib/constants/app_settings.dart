import 'package:logger/logger.dart';

class AppSettings {
  static final AppSettings _settings = AppSettings._internal();

  factory AppSettings() => _settings;

  AppSettings._internal();

  static const appTitle = 'Template';

  String get baseUrl => 'https://template.app/api';

  /// DIO
  final int dioConnectTimeout = 10000;
  final int dioReceiveTimeout = 5000;
  final int dioFailureRetries = 3; // Number of retries before a failure
  final bool dioLogInterceptorRequest = false;
  final bool dioLogInterceptorRequestHeader = false;
  final bool dioLogInterceptorRequestBody = false;
  final bool dioLogInterceptorResponseHeader = false;
  final bool dioLogInterceptorResponseBody = false;

  /// Logger
  final Level loggerLevel = Level.debug;
  final bool loggerColorEnabled = false;
  final bool loggerPrintTime = true;
}
