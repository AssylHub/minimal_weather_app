import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app2/src/core/utils/status_weather.dart';
import 'package:weather_app2/src/features/weather/domain/entities/current_weather.dart';
import 'package:weather_app2/src/features/weather/domain/entities/weather_entity.dart';

class WeatherNow extends StatefulWidget {
  const WeatherNow({
    super.key,
    required this.weather,
    required this.currentWeather,
  });

  final CurrentWeather currentWeather;
  final WeatherEntity weather;

  @override
  State<WeatherNow> createState() => _WeatherNowState();
}

class _WeatherNowState extends State<WeatherNow> {
  final statusWeather = StatusWeather();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.currentWeather.formattedDate),
              Text(widget.currentWeather.description),
              Text("Feels: ${widget.currentWeather.feelsLike}°C"),
              Text("Temperature: ${widget.currentWeather.temperature}°C"),
              Text(
                "${widget.currentWeather.minTemp}°C / ${widget.currentWeather.maxTemp}°C",
              ),
            ],
          ),

          Image(
            image: AssetImage(
              statusWeather.getImageNow(
                widget
                    .currentWeather
                    .weatherCode, // widget.weather hour weather code
                widget.currentWeather.time, // current hour time
                widget.currentWeather.sunrise,
                widget.currentWeather.sunset,
              ),
            ),
            fit: BoxFit.fill,
            height: 140,
          ),

          // ElevatedButton(
          //   onPressed: () {
          //     print(
          //       "Code: ${widget.currentWeather.weatherCode}, Time: ${widget.currentWeather.time}, Sunrise: ${widget.currentWeather.sunrise}, Sunset: ${widget.currentWeather.sunset}",
          //     );
          //   },
          //   child: Icon(Icons.ad_units),
          // ),
        ],
      ),
    );
  }
}
