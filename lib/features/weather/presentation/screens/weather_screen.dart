import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app2/features/weather/data/datasources/weather_remote_datasource_impl.dart';
import 'package:weather_app2/features/weather/data/repositories/weather_repo_impl.dart';
import 'package:weather_app2/features/weather/domain/entities/weather_entity.dart';
import 'package:weather_app2/features/weather/domain/usecases/get_weather_by_cord.dart';
import '../bloc/weather_bloc.dart';

import "package:http/http.dart" as http;

class WeatherScreen extends StatelessWidget {
  final double lat;
  final double lon;

  const WeatherScreen({super.key, required this.lat, required this.lon});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) {
        final httpClient = http.Client();
        final remoteDatasource = WeatherRemoteDatasourceImpl(
          client: httpClient,
          apiKey: '6fabcf39e00bb468f4836b10fe1903d7',
        );
        final repo = WeatherRepoImpl(remoteDatasource);
        final useCase = GetWeatherByCord(repo);

        return WeatherBloc(getWeatherByCord: useCase)
          ..add(FetchWeatherByCordEvent(lat, lon));
      },
      child: BlocBuilder<WeatherBloc, WeatherState>(
        builder: (context, state) {
          if (state is WeatherLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is WeatherLoaded) {
            return WeatherDetailsWidget(weather: state.weatherData);
          } else if (state is WeatherError) {
            return Center(child: Text(state.message));
          } else {
            return const Center(child: Text('Enter a location to begin.'));
          }
        },
      ),
    );
  }
}

class WeatherDetailsWidget extends StatelessWidget {
  final WeatherEntity weather;

  const WeatherDetailsWidget({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("City: ${weather.cityName}", style: TextStyle(fontSize: 20)),
          const SizedBox(height: 10),
          Text("Temperature: ${weather.temperature}°C"),
          Text("Description: ${weather.description}"),
          Text("Humidity: ${weather.humidity}%"),
          Text("Wind Speed: ${weather.windSpeed} m/s"),
        ],
      ),
    );
  }
}
