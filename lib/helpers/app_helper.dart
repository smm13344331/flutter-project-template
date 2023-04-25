import 'package:flutter/material.dart';
import 'package:project_template/constants/constants.dart';
import 'package:project_template/core/models/models.dart';

class ApplicationHelper {
  static final ApplicationHelper _application = ApplicationHelper._internal();

  factory ApplicationHelper() => _application;

  ApplicationHelper._internal();

  ThemeData? _currentTheme;
  Locale? customAppLocale;
  Locale? systemAppLocale;
  Locale _locale = AppLocales.en;
  final List<String> supportedLanguages = ['English', 'Farsi'];
  final List<String> supportedLanguagesCodes = ['en', 'fa'];

  NavigationConfigs navigationConfigs = NavigationConfigs(
    showAppBar: false,
    showAppBarBackButton: false,
    showNavBar: false,
  );

  ///
  /// Getters
  ///

  Locale get locale => _locale;
  bool get useCustomLocale => customAppLocale != null;

  String get localeLabel =>
      '${appLocale.languageCode}_${appLocale.countryCode!.toUpperCase()}';

  Locale get appLocale =>
      customAppLocale ?? (systemAppLocale ?? const Locale('en', 'US'));

  String? get fontFamily => appLocale.languageCode == AppLocales.fa.languageCode
      ? AppLocales.faFont
      : AppLocales.enFont;

  bool get isLocalRTL => appLocale.languageCode == 'fa'; // TODO or Arabic

  ThemeData get theme => _currentTheme!;

  set currentTheme(ThemeData theme) => _currentTheme = theme;

  AppSettings get settings => AppSettings();

  AppColors get colors => AppColors();

  AppIcons get icons => AppIcons();

  AppImages get images => AppImages();

// AppAnimations get animations => AppAnimations();

  AppLocales get locales => AppLocales();

  AppKeys get keys => AppKeys();

  AppStyles get styles => AppStyles();

  AppThemes get themes => AppThemes();

  bool get darkThemeEnabled =>
      _currentTheme != null && _currentTheme == themes.darkThemeData;

}

ApplicationHelper get app => ApplicationHelper();

typedef LocaleChangeCallback = void Function(Locale locale);


