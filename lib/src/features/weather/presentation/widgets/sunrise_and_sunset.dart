import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app2/gen/assets.gen.dart';
import 'package:weather_app2/src/features/weather/domain/entities/current_weather.dart';

class SunriseAndSunset extends StatelessWidget {
  const SunriseAndSunset({super.key, required this.currentWeather});

  final CurrentWeather currentWeather;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Sunrise"),
                      Text(
                        DateFormat("HH:mm").format(
                          DateTime.parse(currentWeather.formattedSunrise),
                        ),
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),

                Expanded(child: Assets.images.sunrise.image()),
              ],
            ),
          ),

          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Sunset"),
                      Text(
                        DateFormat("HH:mm").format(
                          DateTime.parse(currentWeather.formattedSunset),
                        ),
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),

                Expanded(child: Assets.images.sunset.image()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
