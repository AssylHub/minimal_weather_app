import 'package:flutter/material.dart';
import 'package:weather_app2/gen/assets.gen.dart';
import 'package:weather_app2/src/core/localization/generated/l10n.dart';
import 'package:weather_app2/src/features/weather/domain/entities/current_weather.dart';
import 'package:weather_app2/src/features/weather/domain/entities/weather_variable.dart';

class DescContainer extends StatefulWidget {
  const DescContainer({super.key, required this.currentWeather});
  final CurrentWeather currentWeather;

  @override
  State<DescContainer> createState() => _DescContainerState();
}

class _DescContainerState extends State<DescContainer> {
  @override
  Widget build(BuildContext context) {
    final variables = [
      WeatherVariable(
        value: widget.currentWeather.dewPoint.toString(),
        icon: Assets.images.dew,
        label: S.current.dewpoint,
      ),
      WeatherVariable(
        value: widget.currentWeather.feelsLikeTemp.toString(),
        icon: Assets.images.hot,
        label: S.current.feels,
      ),
      WeatherVariable(
        value: widget.currentWeather.visibility.toString(),
        icon: Assets.images.fog,
        label: S.current.visibility,
      ),
      WeatherVariable(
        value: widget.currentWeather.windDirection.toString(),
        icon: Assets.images.windsock,
        label: S.current.direction,
      ),
      WeatherVariable(
        value: widget.currentWeather.windSpeed.toString(),
        icon: Assets.images.wind,
        label: S.current.wind,
      ),
      WeatherVariable(
        value: widget.currentWeather.windGust.toString(),
        icon: Assets.images.windgusts,
        label: S.current.gust,
      ),
      WeatherVariable(
        value: widget.currentWeather.evapotranspiration.toString(),
        icon: Assets.images.evaporation,
        label: S.current.evapotranspiration,
      ),
      WeatherVariable(
        value: widget.currentWeather.precipitation.toString(),
        icon: Assets.images.rainfall,
        label: S.current.precipitation,
      ),
      WeatherVariable(
        value: widget.currentWeather.rain.toString(),
        icon: Assets.images.water,
        label: S.current.rain,
      ),
      WeatherVariable(
        value: widget.currentWeather.precipitationProbability.toString(),
        icon: Assets.images.precipitationProbability,
        label: S.current.precipitation_probability,
      ),
      WeatherVariable(
        value: widget.currentWeather.humidity.toString(),
        icon: Assets.images.humidity,
        label: S.current.humidity,
      ),
      WeatherVariable(
        value: widget.currentWeather.cloudCover.toString(),
        icon: Assets.images.cloudy,
        label: S.current.cloudcover,
      ),
      WeatherVariable(
        value: widget.currentWeather.surfacePressure.toString(),
        icon: Assets.images.atmospheric,
        label: S.current.pressure,
      ),
      WeatherVariable(
        value: widget.currentWeather.uvIndex.toString(),
        icon: Assets.images.uv,
        label: S.current.uv_index,
      ),
      WeatherVariable(
        value: widget.currentWeather.radiation.toString(),
        icon: Assets.images.shortwaveRadiation,
        label: S.current.shortwave_radiation,
      ),
    ];

    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20),
      ),
      child: ExpansionTile(
        title: Text(S.current.hourly_weather_variables),
        shape: Border.all(color: Colors.transparent),
        children: [
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 4,
              childAspectRatio: 1.5,
            ),
            itemCount: variables.length,
            itemBuilder: (context, index) {
              final variable = variables[index];
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  variable.icon.image(width: 30),
                  Text(variable.value),
                  Text(
                    variable.label,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
