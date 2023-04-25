import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'core/services/services.dart';
import 'providers/providers.dart';
import 'package:shared_preferences/shared_preferences.dart';

final locator = GetIt.instance;

Future<void> setup() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();

  /// PROVIDERS
  locator.registerLazySingleton<AppProvider>(
      () => AppProvider(locator(), locator()));
  locator.registerLazySingleton<HomeProvider>(() => HomeProvider(locator()));
  locator.registerLazySingleton<ProfileProvider>(() => ProfileProvider());

  /// SERVICES
  locator.registerLazySingleton<LogService>(() => LogService());

  /// CLIENTS
  locator.registerSingleton<Dio>(Dio());

  /// PLUGINS
  locator.registerLazySingleton<SharedPreferences>(() => prefs);
}
