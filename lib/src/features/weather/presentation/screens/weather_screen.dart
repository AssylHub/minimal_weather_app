import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app2/src/features/weather/presentation/widgets/weather_display.dart';
import '../bloc/weather_bloc.dart';

class WeatherScreen extends StatelessWidget {
  final double lat;
  final double lon;

  const WeatherScreen({super.key, required this.lat, required this.lon});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherBloc, WeatherState>(
      builder: (context, state) {
        if (state is WeatherLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is WeatherLoaded) {
          return WeatherDisplay(
            weather: state.weatherData,
            currentWeather: state.currentWeather,
          );
        } else if (state is WeatherError) {
          return Center(child: Text(state.message));
        } else {
          return const Center(child: Text('Enter a location to begin.'));
        }
      },
    );
  }
}
