import 'package:logger/logger.dart';
import 'package:project_template/helpers/helpers.dart';

class AppLogger {
  static final Logger logger = Logger(
    level: app.settings.loggerLevel,
    printer: SimplePrinter(
      colors: app.settings.loggerColorEnabled,
      printTime: app.settings.loggerPrintTime,
    ),
  );

  static void warn(dynamic message,
      [dynamic error, StackTrace? stackTrace, sendCrashReport = true]) {
    logger.w(message, error, stackTrace);
    if (sendCrashReport) recordCrashlyticsError(message, error, stackTrace);
  }

  static void err(dynamic message,
      {dynamic error, StackTrace? stackTrace, sendCrashReport = true}) {
    logger.e(message, error, stackTrace);
    if (sendCrashReport) recordCrashlyticsError(message, error, stackTrace);
  }

  static void info(dynamic message, {dynamic error, StackTrace? stackTrace}) =>
      logger.i(message, error, stackTrace);

  static void debug(dynamic message, {dynamic error, StackTrace? stackTrace}) =>
      logger.d(message, error, stackTrace);

  static void recordCrashlyticsError(dynamic message,
      [dynamic error, StackTrace? stackTrace]) {
    List<String> stack =
        (stackTrace ?? '').toString().split('\n').map((e) => '$e\n').toList();
    List<String> msg =
        (message ?? '').toString().split('\n').map((e) => '$e\n').toList();
    // AnalyticsService().logError(msg, stack);
  }
}
