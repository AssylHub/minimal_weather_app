import 'dart:convert';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather_app2/src/features/weather/data/datasources/i_weather_local.dart';
import 'package:weather_app2/src/features/weather/data/models/weather_model/weather_model.dart';

@LazySingleton(as: IWeatherLocal)
class WeatherLocalImpl implements IWeatherLocal {
  static const _cacheKey = 'CACHED_WEATHER';

  @override
  Future<void> cacheWeather(WeatherModel weather) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_cacheKey, jsonEncode(weather.toJson()));
  }

  @override
  Future<WeatherModel?> getCachedWeather() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = prefs.getString(_cacheKey);
    if (jsonString != null) {
      return WeatherModel.fromJson(jsonDecode(jsonString));
    }
    return null;
  }

  @override
  Future<void> clearCache() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_cacheKey);
  }
}
