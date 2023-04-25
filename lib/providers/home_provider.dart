import 'package:flutter/material.dart';
import 'package:project_template/routes/route_navigator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeProvider with ChangeNotifier {
  final SharedPreferences _preferences;

  HomeProvider(this._preferences);

  openProfile(BuildContext context) {
    RouteNavigator.navigateTo(context: context, route: Routes.profile);
  }

  openRegister(BuildContext context) {
    RouteNavigator.navigateTo(context: context, route: Routes.register);
  }
}
