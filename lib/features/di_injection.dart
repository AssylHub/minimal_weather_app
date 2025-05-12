import 'package:weather_app2/features/geolocation/di/geolocation_di.dart';
import 'package:weather_app2/features/weather/di/weather_di.dart';

Future<void> init() async {
  await initGeolocation();
  await initWeather();
}
