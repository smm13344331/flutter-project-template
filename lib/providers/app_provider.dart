import 'package:flutter/material.dart';
import 'package:project_template/core/models/log_data.dart';
import 'package:project_template/core/services/log_service.dart';
import 'package:project_template/routes/route_navigator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppProvider with ChangeNotifier {
  final SharedPreferences _preferences;
  final LogService _logService;

  AppProvider(this._preferences, this._logService);

  void init(BuildContext context) {
    Future.delayed(Duration(seconds: 1), () {
      RouteNavigator.navigateTo(
          context: context, route: Routes.home, clearStack: true);
    });
  }

  Future<void> log(List<LogData> logs) async {
    await _logService.saveAll(logs);
  }
}
