import 'package:dynamic_themes/dynamic_themes.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:project_template/localization/generated/l10n.dart';
import 'package:project_template/providers/providers.dart';
import 'package:project_template/routes/route_navigator.dart';
import 'package:project_template/ui/screens/screens.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'helpers/helpers.dart';
import 'locator.dart';

class TemplateApp extends StatefulWidget {
  const TemplateApp({Key? key}) : super(key: key);

  @override
  State<TemplateApp> createState() => _TemplateAppState();
}

class _TemplateAppState extends State<TemplateApp> {
  final List<Locale> _deviceLocales = WidgetsBinding.instance.window.locales;

  @override
  void initState() {
    super.initState();
    final router = FluroRouter();
    Routes.configureRoutes(router);
    RouteNavigator.router = router;
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => locator<AppProvider>()),
        ChangeNotifierProvider(create: (_) => locator<HomeProvider>()),
        ChangeNotifierProvider(create: (_) => locator<ProfileProvider>()),
      ],
      child: DynamicTheme(
          themeCollection: app.themes.themeCollection,
          builder: (context, theme) {
            app.currentTheme = theme;
            if (theme == app.themes.lightThemeData) {
              app.colors.background = app.colors.backgroundLight;
              app.colors.text = app.colors.textLight;
              app.colors.scaffoldBackground =
                  app.colors.scaffoldBackgroundLight;
            } else {
              app.colors.background = app.colors.backgroundDark;
              app.colors.text = app.colors.textDark;
              app.colors.scaffoldBackground = app.colors.scaffoldBackgroundDark;
            }
            return MaterialApp(
              builder: (context, widget) => ResponsiveWrapper.builder(
                ClampingScrollWrapper.builder(context, widget!),
                defaultScale: true,
                minWidth: 480,
                defaultName: MOBILE,
                breakpoints: [
                  ResponsiveBreakpoint.autoScale(480, name: MOBILE),
                  ResponsiveBreakpoint.resize(600, name: MOBILE),
                  ResponsiveBreakpoint.resize(850, name: TABLET),
                  ResponsiveBreakpoint.resize(1080, name: DESKTOP),
                ],
                background: Container(color: app.colors.background),
              ),
              debugShowCheckedModeBanner: false,
              title: 'Template App',
              theme: theme,
              locale: app.locale,
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                //provides localised strings
                GlobalWidgetsLocalizations.delegate,
                //provides RTL support
                GlobalCupertinoLocalizations.delegate,
              ],
              localeListResolutionCallback: (_, supportedLocales) {
                if (app.useCustomLocale) {
                  return app.appLocale;
                }

                Locale? locale;
                if (_deviceLocales.isNotEmpty) {
                  var intersection = _deviceLocales
                      .where((deviceLocale) => supportedLocales
                          .map(
                              (supportedLocale) => supportedLocale.languageCode)
                          .toList()
                          .contains(deviceLocale.languageCode))
                      .toList();
                  if (intersection.isNotEmpty) {
                    locale = intersection.first;
                  }
                }
                locale ??= supportedLocales.first;

                if (app.systemAppLocale?.languageCode != locale.languageCode) {
                  WidgetsBinding.instance.addPostFrameCallback(
                      (_) => app.systemAppLocale = locale!);
                }

                return locale;
              },
              supportedLocales: S.delegate.supportedLocales,
              onGenerateRoute: RouteNavigator.router.generator,
              onUnknownRoute: (settings) =>
                  MaterialPageRoute(builder: (_) => NotFoundScreen()),
              // navigatorObservers: <NavigatorObserver>[analyticsObserver!],
            );
          }),
    );
  }
}
