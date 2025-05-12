import 'package:flutter/material.dart';
import 'package:weather_app2/features/weather/domain/entities/weather_entity.dart';
import 'package:weather_app2/features/weather/presentation/widgets/weather_now.dart';

class WeatherDisplay extends StatelessWidget {
  const WeatherDisplay({super.key, required this.weather});

  final WeatherEntity weather;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView(children: [
        
        
        WeatherNow(weather: weather,)
        

        
        ]),
    );
  }
}
