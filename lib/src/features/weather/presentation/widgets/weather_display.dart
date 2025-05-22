import 'package:flutter/material.dart';
import 'package:weather_app2/src/features/weather/domain/entities/current_weather.dart';
import 'package:weather_app2/src/features/weather/domain/entities/weather_entity.dart';
import 'package:weather_app2/src/features/weather/presentation/widgets/daily_weather.dart';
import 'package:weather_app2/src/features/weather/presentation/widgets/desc_container.dart';
import 'package:weather_app2/src/features/weather/presentation/widgets/hourly_weather.dart';
import 'package:weather_app2/src/features/weather/presentation/widgets/sunrise_and_sunset.dart';
import 'package:weather_app2/src/features/weather/presentation/widgets/weather_now.dart';

class WeatherDisplay extends StatelessWidget {
  const WeatherDisplay({
    super.key,
    required this.weather,
    required this.currentWeather,
  });

  final CurrentWeather currentWeather;
  final WeatherEntity weather;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        child: Column(
          spacing: 10,
          children: [
            WeatherNow(weather: weather, currentWeather: currentWeather),
            HourlyWeather(weatherEntity: weather),
            SunriseAndSunset(currentWeather: currentWeather),
            DescContainer(currentWeather: currentWeather),
            DailyWeather(weatherEntity: weather),
          ],
        ),
      ),
    );
  }
}
