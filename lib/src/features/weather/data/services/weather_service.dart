import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:weather_app2/src/core/utils/loggers/log.dart';
import 'package:weather_app2/src/core/utils/status_weather.dart';
import 'package:weather_app2/src/features/weather/domain/entities/current_weather.dart';
import 'package:weather_app2/src/features/weather/domain/entities/weather_entity.dart';

@injectable
class WeatherService {
  final now = DateTime.now();

  // Method to get current hour data
  CurrentWeather getWeatherNow(WeatherEntity weatherEntity) {
    // Format the current date and day of the week
    final dayOfWeek = DateFormat('EEEE').format(now); // "Wednesday"
    final dayOfMonth = DateFormat('d').format(now); // "14"
    final month = DateFormat('MMMM').format(now); // "May"
    final formattedDate =
        "$dayOfWeek, $month $dayOfMonth"; // "Wednesday, May 14"

    final nowDateString = now.toIso8601String().substring(
      0,
      10,
    ); // "YYYY-MM-DD"
    final nowHourString = now.toIso8601String().substring(
      0,
      13,
    ); // "YYYY-MM-DDTHH"

    // Find the index of the current hour in the hourly data
    final index = weatherEntity.time.indexWhere(
      (t) => t.startsWith(nowHourString),
    );

    if (index == -1) {
      throw Exception("Current time not found in hourly data.");
    }

    // Find the corresponding day index for the current date in the daily data
    final dayIndex = weatherEntity.time.indexWhere(
      (t) => t.startsWith(nowDateString),
    );

    if (index == -1) {
      throw Exception("Current time not found in daily data.");
    }

    return CurrentWeather(
      time: weatherEntity.time[index],
      temperature: weatherEntity.temperatures[index],
      feelsLike: weatherEntity.feelsLikeTemps[index],
      weatherCode: weatherEntity.weatherCodes[index],
      description: StatusWeather().getText(weatherEntity.weatherCodes[index]),
      maxTemp: weatherEntity.maxTemps[dayIndex],
      minTemp: weatherEntity.minTemps[dayIndex],
      sunrise: weatherEntity.sunriseList[dayIndex],
      sunset: weatherEntity.sunsetList[dayIndex],
      formattedDate: formattedDate,
      formattedSunrise: weatherEntity.sunriseList[dayIndex],
      formattedSunset: weatherEntity.sunsetList[dayIndex],
      dewPoint: weatherEntity.dewpoints[index],
      feelsLikeTemp: weatherEntity.feelsLikeTemps[index],
      visibility: weatherEntity.visibility[index],
      windDirection: weatherEntity.direction[index],
      windSpeed: weatherEntity.windSpeed[index],
      windGust: weatherEntity.windGust[index],
      evapotranspiration: weatherEntity.evapotranspiration[index],
      precipitation: weatherEntity.precipitation[index],
      rain: weatherEntity.rain[index],
      precipitationProbability: weatherEntity.precipitationProbability[index],
      humidity: weatherEntity.humidity[index],
      cloudCover: weatherEntity.cloudCover[index],
      surfacePressure: weatherEntity.surfacePressure[index],
      uvIndex: weatherEntity.uvIndex[index],
      radiation: weatherEntity.radiation[index],
    );
  }
}
