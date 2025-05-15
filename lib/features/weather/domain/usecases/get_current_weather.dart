import 'package:weather_app2/features/weather/data/services/weather_service.dart';
import 'package:weather_app2/features/weather/domain/entities/current_weather.dart';
import 'package:weather_app2/features/weather/domain/entities/weather_entity.dart';

class GetCurrentWeather {
  final WeatherService weatherService;

  GetCurrentWeather({required this.weatherService});

  CurrentWeather call(WeatherEntity entity) {
    return weatherService.getWeatherNow(entity);
  }
}
