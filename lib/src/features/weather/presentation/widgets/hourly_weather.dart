import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app2/src/core/utils/status_weather.dart';
import 'package:weather_app2/src/features/weather/domain/entities/weather_entity.dart';

class HourlyWeather extends StatefulWidget {
  const HourlyWeather({super.key, required this.weatherEntity});

  final WeatherEntity weatherEntity;

  @override
  State<HourlyWeather> createState() => _HourlyWeatherState();
}

class _HourlyWeatherState extends State<HourlyWeather> {
  final statusWeather = StatusWeather();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20),
      ),
      height: 150,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return VerticalDivider(width: 10, indent: 40, endIndent: 40);
        },
        shrinkWrap: true,
        itemCount: widget.weatherEntity.time.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final time = widget.weatherEntity.time[index];
          final index24 = (index / 24).floor();

          return Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            width: 90,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(DateFormat("HH:mm").format(DateTime.parse(time))),
                Text(DateFormat("EEE").format(DateTime.parse(time))),
                statusWeather
                    .getImageToday(
                      widget.weatherEntity.weatherCodes[index],
                      time,
                      widget.weatherEntity.sunriseList[index24],
                      widget.weatherEntity.sunsetList[index24],
                    )
                    .image(scale: 3),

                Text(
                  widget.weatherEntity.temperatures[index].toString(),
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
