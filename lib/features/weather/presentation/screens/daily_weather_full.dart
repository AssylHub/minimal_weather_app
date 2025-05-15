import 'package:flutter/material.dart';
import 'package:weather_app2/features/weather/domain/entities/weather_entity.dart';
import 'package:weather_app2/features/weather/presentation/widgets/daily_weather_card.dart';

class DailyWeatherFull extends StatefulWidget {
  const DailyWeatherFull({super.key, required this.weatherEntity});

  final WeatherEntity weatherEntity;

  @override
  State<DailyWeatherFull> createState() => _DailyWeatherFullState();
}

class _DailyWeatherFullState extends State<DailyWeatherFull> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("12-day weather forecast"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: widget.weatherEntity.timeDaily.length,
          itemBuilder: (context, index) {
            return DailyWeatherCard(
              weatherEntity: widget.weatherEntity,
              index: index,
            );
          },
        ),
      ),
    );
  }
}
