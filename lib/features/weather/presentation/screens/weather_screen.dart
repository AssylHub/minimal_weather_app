import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app2/features/weather/data/datasources/weather_remote_datasource_impl.dart';
import 'package:weather_app2/features/weather/data/repositories/weather_repo_impl.dart';
import 'package:weather_app2/features/weather/domain/entities/weather_entity.dart';
import 'package:weather_app2/features/weather/domain/usecases/get_weather_by_cord.dart';
import 'package:weather_app2/features/weather/presentation/widgets/weather_display.dart';
import 'package:weather_app2/features/weather/presentation/widgets/weather_now.dart';
import '../bloc/weather_bloc.dart';

import "package:http/http.dart" as http;

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
          return WeatherDisplay(weather: state.weatherData);
        } else if (state is WeatherError) {
          return Center(child: Text(state.message));
        } else {
          return const Center(child: Text('Enter a location to begin.'));
        }
      },
    );
  }
}
