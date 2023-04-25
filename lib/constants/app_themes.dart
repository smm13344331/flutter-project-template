import 'package:dynamic_themes/dynamic_themes.dart';
import 'package:flutter/material.dart';

import 'package:project_template/helpers/helpers.dart';

class AppTheme {
  static const int light = 0;
  static const int dark = 1;
}

class AppThemes {
  static final AppThemes _themes = AppThemes._internal();

  factory AppThemes() => _themes;

  AppThemes._internal();

  final lightThemeData = ThemeData.light().copyWith(
    primaryColor: app.colors.primary,
    backgroundColor: app.colors.backgroundLight,
    // secondaryHeaderColor: app.colors.scaffoldBackgroundLight,
    canvasColor: Colors.transparent,
    scaffoldBackgroundColor: app.colors.scaffoldBackgroundLight,
    textTheme: TextTheme(
      displayLarge: app.styles.headline1,
      displayMedium: app.styles.headline2,
      displaySmall: app.styles.headline3,
      headlineMedium: app.styles.headline4,
      bodyLarge: app.styles.bodyText1,
      bodyMedium: app.styles.bodyText2,
    ),
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
            visualDensity: VisualDensity(horizontal: 0, vertical: 0),
            minimumSize: Size.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            padding: const EdgeInsets.all(10.0))),
    // ignore: deprecated_member_use
    scrollbarTheme: const ScrollbarThemeData(isAlwaysShown: true),
    pageTransitionsTheme: PageTransitionsTheme(builders: const {
      TargetPlatform.macOS: FadeUpwardsPageTransitionsBuilder(),
      TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
      TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
    }),
  );

  final darkThemeData = ThemeData.dark().copyWith(
    primaryColor: app.colors.primary,
    backgroundColor: app.colors.backgroundDark,
    // secondaryHeaderColor: app.colors.secondaryHeaderColor,
    canvasColor: Colors.transparent,
    scaffoldBackgroundColor: app.colors.scaffoldBackgroundDark,
    textTheme: TextTheme(
      displayLarge: app.styles.headline1,
      displayMedium: app.styles.headline2,
      displaySmall: app.styles.headline3,
      headlineMedium: app.styles.headline4,
      bodyLarge: app.styles.bodyText1,
      bodyMedium: app.styles.bodyText2,
    ),
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(1)),
            visualDensity: VisualDensity(horizontal: 0, vertical: 0),
            minimumSize: Size.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            padding: const EdgeInsets.all(10.0))),
    // ignore: deprecated_member_use
    scrollbarTheme: const ScrollbarThemeData(isAlwaysShown: true),
    pageTransitionsTheme: PageTransitionsTheme(builders: const {
      TargetPlatform.macOS: FadeUpwardsPageTransitionsBuilder(),
      TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
      TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
    }),
  );

  late final themeCollection = ThemeCollection(
    themes: {AppTheme.light: lightThemeData, AppTheme.dark: darkThemeData},
    fallbackTheme: lightThemeData,
  );

  void setTheme(BuildContext context, {ThemeData? theme}) {
    if (theme == null) {
      if (isDarkThemeEnabled(context)) {
        DynamicTheme.of(context)!.setTheme(AppTheme.light);
        app.currentTheme = lightThemeData;
        app.colors.background = app.colors.backgroundLight;
        app.colors.text = app.colors.textLight;
        app.colors.scaffoldBackground = app.colors.scaffoldBackgroundLight;
      } else {
        DynamicTheme.of(context)!.setTheme(AppTheme.dark);
        app.currentTheme = darkThemeData;
        app.colors.background = app.colors.backgroundDark;
        app.colors.text = app.colors.textDark;
        app.colors.scaffoldBackground = app.colors.scaffoldBackgroundDark;
      }
    } else {
      DynamicTheme.of(context)!
          .setTheme(theme == darkThemeData ? AppTheme.dark : AppTheme.light);
      app.currentTheme = theme;
    }
  }

  bool isDarkThemeEnabled(BuildContext context) =>
      DynamicTheme.of(context)!.themeId == AppTheme.dark;
}
