import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app2/core/constants/app_constants.dart';
import 'package:weather_app2/features/geolocation/di/geolocation_di.dart';
import 'package:weather_app2/features/weather/di/weather_di.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // External
  sl.registerLazySingleton(() => http.Client());
  sl.registerSingleton(() => AppConstants.apiKey);

  // Feature injections
  await initGeolocation();
  await initWeather();
}
