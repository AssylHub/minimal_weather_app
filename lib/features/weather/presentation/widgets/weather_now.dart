import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app2/features/weather/data/services/day_now_service.dart';
import 'package:weather_app2/features/weather/domain/entities/weather_entity.dart';

class WeatherNow extends StatefulWidget {
  const WeatherNow({super.key, required this.weather});

  final WeatherEntity weather;

  @override
  State<WeatherNow> createState() => _WeatherNowState();
}

class _WeatherNowState extends State<WeatherNow> {
  final DayNowService dayNowService = DayNowService();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${dayNowService.getCurrentWeekDay()} ${dayNowService.getCurrentDay()}",
          ),
          Text("${widget.weather.description}"),

          Text("Feels: ${widget.weather.feelsLike}"),

          Text("Temperature: ${widget.weather.temperature}°C"),

          Text("${widget.weather.tempMin}°C/${widget.weather.tempMax}"),
        ],
      ),
    );
  }
}
