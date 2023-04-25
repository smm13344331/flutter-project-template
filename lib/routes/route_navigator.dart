import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import 'route_handler.dart';

class Routes {
  static String splash = '/';
  static String login = '/login';
  static String register = '/register';
  static String home = '/home';
  static String profile = '/profile';


  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = notFoundHandler;
    router.define(splash, handler: splashScreenHandler);
    router.define(login, handler: loginScreenHandler);
    router.define(register, handler: registerScreenHandler);
    router.define(home, handler: homeScreenHandler);
    router.define(profile, handler: profileScreenHandler);
  }
}

class RouteNavigator {
  static late FluroRouter router;

  static Future<dynamic> navigateTo({
    required BuildContext context,
    required String route,
    Duration transitionDuration = const Duration(milliseconds: 300),
    TransitionType transition = TransitionType.fadeIn,
    Map<String, dynamic>? param,
    bool replace = false,
    bool clearStack = false,
    RouteTransitionsBuilder? transitionBuilder,
  }) {
    String routePath = route;
    if (param != null) {
      bool isFirst = true;
      param.forEach((key, value) {
        routePath += '${isFirst ? '?' : '&'}$key=$value';
        isFirst = false;
      });
    }
    return router.navigateTo(
      context,
      routePath,
      replace: replace,
      transition: transition,
      clearStack: clearStack,
      transitionDuration: transitionDuration,
      transitionBuilder: transitionBuilder,
    );
  }

  static void navigateBack<T>(BuildContext context, [T? result]) {
    router.pop(context, result);
  }
}
