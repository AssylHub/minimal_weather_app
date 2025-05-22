import 'package:flutter/material.dart';
import 'package:weather_app2/src/features/weather/domain/entities/current_weather.dart';

class DescContainer extends StatefulWidget {
  const DescContainer({super.key, required this.currentWeather});
  final CurrentWeather currentWeather;

  @override
  State<DescContainer> createState() => _DescContainerState();
}

class _DescContainerState extends State<DescContainer> {
  @override
  Widget build(BuildContext context) {
    final List<String> values = [
      widget.currentWeather.dewPoint.toString(),
      widget.currentWeather.feelsLikeTemp.toString(),
      widget.currentWeather.visibility.toString(),
      widget.currentWeather.windDirection.toString(),
      widget.currentWeather.windSpeed.toString(),
      widget.currentWeather.windGust.toString(),
      widget.currentWeather.evapotranspiration.toString(),
      widget.currentWeather.precipitation.toString(),
      widget.currentWeather.rain.toString(),
      widget.currentWeather.precipitationProbability.toString(),
      widget.currentWeather.humidity.toString(),
      widget.currentWeather.cloudCover.toString(),
      widget.currentWeather.surfacePressure.toString(),
      widget.currentWeather.uvIndex.toString(),
      widget.currentWeather.radiation.toString(),
    ];

    final List<String> imagePaths = [
      'assets/images/dew.png',
      'assets/images/hot.png',
      'assets/images/fog.png',
      'assets/images/windsock.png',
      'assets/images/wind.png',
      'assets/images/windgusts.png',
      'assets/images/evaporation.png',
      'assets/images/rainfall.png',
      'assets/images/water.png',
      'assets/images/precipitation_probability.png',
      'assets/images/humidity.png',
      'assets/images/cloudy.png',
      'assets/images/atmospheric.png',
      'assets/images/uv.png',
      'assets/images/shortwave_radiation.png',
    ];

    final List<String> imageNames = [
      'Dewpoint',
      'Feels',
      'Visibility',
      'Direction',
      'Wind',
      'Gust',
      'Evapotranspiration',
      'Precipitation',
      'Rain',
      'Precipitation Probability',
      'Humidity',
      'Cloudcover',
      'Pressure',
      'UV-Index',
      'Shortwave Radiation',
    ];

    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20),
      ),
      child: ExpansionTile(
        title: Text("Hourly weather variables"),
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
            itemCount: values.length,
            itemBuilder: (context, index) {
              return Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(imagePaths[index], width: 30),
                    Text(values[index]),
                    Text(
                      imageNames[index],
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
