import 'package:flutter/material.dart';
import 'package:project_template/helpers/helpers.dart';

class AppColors {
  static final AppColors _colors = AppColors._internal();

  factory AppColors() => _colors;

  AppColors._internal();

  final Color primary = const Color(0xff668833);
  final Color error = const Color(0xFFFA081C);

  Color background = const Color(0xfff6f9fc);
  final Color backgroundLight = const Color(0xfff6f9fc);
  final Color backgroundDark = const Color(0xFF171717);

  Color text =
      app.darkThemeEnabled ? const Color(0xfff5f5f5) : const Color(0xff333333);
  final Color textLight = const Color(0xff333333);
  final Color textDark = const Color(0xfff5f5f5);

  Color scaffoldBackground = const Color(0xffffffff);
  final Color scaffoldBackgroundLight = const Color(0xffffffff);
  final Color scaffoldBackgroundDark = const Color(0xff000000);

  final Color divider = Color(0xff787880).withOpacity(0.3);
  final Color greyLight = Color(0xffaeaeae);

  final Color white = Colors.white;
  final Color black = Colors.black;
}
