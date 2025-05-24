import 'package:weather_app2/src/features/weather/data/models/weather_model/weather_model.dart';

abstract interface class IWeatherLocal {
  Future<void> cacheWeather(WeatherModel weather);
  Future<WeatherModel?> getCachedWeather();
  Future<void> clearCache();
}
