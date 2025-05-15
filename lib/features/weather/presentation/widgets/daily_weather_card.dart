import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app2/core/utils/status_weather.dart';
import 'package:weather_app2/features/weather/domain/entities/weather_entity.dart';

class DailyWeatherCard extends StatefulWidget {
  const DailyWeatherCard({
    super.key,
    required this.weatherEntity,
    required this.index,
  });

  final WeatherEntity weatherEntity;
  final int index;

  @override
  State<DailyWeatherCard> createState() => _DailyWeatherCardState();
}

class _DailyWeatherCardState extends State<DailyWeatherCard> {
  final statusWeather = StatusWeather();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20),
      ),
      height: 130,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${widget.weatherEntity.minTemps[widget.index]}C / ${widget.weatherEntity.maxTemps[widget.index]}C",
                ),
                Text(
                  "${DateFormat("EEEE").format(DateTime.parse(widget.weatherEntity.timeDaily[widget.index]))}, ${DateFormat("MMMM").format(DateTime.parse(widget.weatherEntity.timeDaily[widget.index]))} ${DateFormat("d").format(DateTime.parse(widget.weatherEntity.timeDaily[widget.index]))}",
                ),
                Text(
                  statusWeather.getText(
                    widget.weatherEntity.weatherCodesDaily[widget.index],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Image.asset(
              statusWeather.getImageNowDaily(
                widget.weatherEntity.weatherCodesDaily[widget.index],
              ),
              scale: 6.5,
            ),
          ),
        ],
      ),
    );
  }
}
