import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:project_template/constants/constants.dart';
import 'package:project_template/ui/screens/screens.dart';

var notFoundHandler =
    Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
  AppLogger.err('ROUTE WAS NOT FOUND !!!');
  return NotFoundScreen();
});

var splashScreenHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return SplashScreen();
});

var homeScreenHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return HomeScreen();
});

var loginScreenHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return LoginScreen();
});

var registerScreenHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return RegisterScreen();
});

var profileScreenHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return ProfileScreen();
});
