import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app2/src/core/utils/status_weather.dart';
import 'package:weather_app2/src/features/weather/domain/entities/weather_entity.dart';
import 'package:weather_app2/src/features/weather/presentation/screens/daily_weather_full.dart';

class DailyWeather extends StatefulWidget {
  const DailyWeather({super.key, required this.weatherEntity});

  final WeatherEntity weatherEntity;

  @override
  State<DailyWeather> createState() => _DailyWeatherState();
}

class _DailyWeatherState extends State<DailyWeather> {
  final statusWeather = StatusWeather();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 7,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      DateFormat("EEE").format(
                        DateTime.parse(widget.weatherEntity.timeDaily[index]),
                      ),
                    ),
                    Row(
                      spacing: 5,
                      children: [
                        Image.asset(
                          statusWeather.getImage7Day(
                            widget.weatherEntity.weatherCodesDaily[index],
                          ),
                          scale: 3,
                        ),
                        Text(
                          StatusWeather().getText(
                            widget.weatherEntity.weatherCodesDaily[index],
                          ),
                        ),
                      ],
                    ),

                    Text(
                      "${widget.weatherEntity.minTemps[index]}C / ${widget.weatherEntity.maxTemps[index]}C",
                    ),
                  ],
                ),
              );
            },
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (context) =>
                          DailyWeatherFull(weatherEntity: widget.weatherEntity),
                ),
              );
            },
            child: Text("12 day Weather Forecast"),
          ),
        ],
      ),
    );
  }
}
