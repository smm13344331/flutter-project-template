import 'package:flutter/material.dart';
import 'package:project_template/helpers/helpers.dart';

class AppStyles {
  static final AppStyles _styles = AppStyles._internal();

  factory AppStyles() => _styles;

  AppStyles._internal();

  TextStyle get headline1 => TextStyle(
        fontFamily: app.fontFamily,
        fontSize: 96,
        fontWeight: FontWeight.w400,
        color: app.colors.text,
      );

  TextStyle get headline2 => TextStyle(
        fontFamily: app.fontFamily,
        fontSize: 60,
        fontWeight: FontWeight.w400,
        color: app.colors.text,
      );

  TextStyle get headline3 => TextStyle(
        fontFamily: app.fontFamily,
        fontSize: 48,
        fontWeight: FontWeight.w400,
        color: app.colors.text,
      );

  TextStyle get headline4 => TextStyle(
        fontFamily: app.fontFamily,
        fontSize: 34,
        fontWeight: FontWeight.w400,
        color: app.colors.text,
      );

  TextStyle get headline5 => TextStyle(
        fontFamily: app.fontFamily,
        fontSize: 24,
        fontWeight: FontWeight.w400,
        color: app.colors.text,
      );

  TextStyle get headline6 => TextStyle(
        fontFamily: app.fontFamily,
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: app.colors.text,
      );

  TextStyle get bodyText1 => TextStyle(
        fontFamily: app.fontFamily,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: app.colors.text,
      );

  TextStyle get bodyText2 => TextStyle(
        fontFamily: app.fontFamily,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: app.colors.text,
      );

  TextStyle get bodyTextBold => TextStyle(
        fontFamily: app.fontFamily,
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: app.colors.text,
      );

  TextStyle get subtitle1 => TextStyle(
        fontFamily: app.fontFamily,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: app.colors.text,
      );

  TextStyle get subtitle2 => TextStyle(
        fontFamily: app.fontFamily,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: app.colors.text.withOpacity(0.5),
      );

  TextStyle get button => TextStyle(
        fontFamily: app.fontFamily,
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: app.colors.text,
      );

  TextStyle get caption => TextStyle(
        fontFamily: app.fontFamily,
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: app.colors.text,
      );

  TextStyle get overline => TextStyle(
        fontFamily: app.fontFamily,
        fontSize: 10,
        fontWeight: FontWeight.w400,
        color: app.colors.text,
      );
}
