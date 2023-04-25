import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:project_template/constants/constants.dart';
import 'locator.dart' as locator;
import 'template_app.dart';
import 'routes/route_configure_nonweb.dart'
    if (dart.library.html) 'routes/route_configure_web.dart';

Future<void> main() async {
  configureApp();
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    locator.setup();
    runApp(const TemplateApp());
  }, (error, stackTrace) async {
    if (error is DioError) {
      DioError dioError = error;
      AppLogger.err(dioError.response.toString(),
          stackTrace: stackTrace, sendCrashReport: true);
    } else {
      AppLogger.err(error.toString(),
          stackTrace: stackTrace, sendCrashReport: true);
      debugPrint(stackTrace.toString());
      throw error;
    }
  });
}
