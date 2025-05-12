import 'dart:convert';

import 'package:weather_app2/features/weather/data/datasources/weather_remote_datasource.dart';
import 'package:weather_app2/features/weather/data/models/weather_model.dart';

import 'package:http/http.dart' as http;

class WeatherRemoteDatasourceImpl implements WeatherRemoteDatasource {
  final http.Client client;
  final String apiKey;

  WeatherRemoteDatasourceImpl({required this.client, required this.apiKey});

  @override
  Future<Weather> getWeatherByCord(double lat, double lon) async {
    final url = Uri.parse(
      "https://api.openweathermap.org/data/2.5/weather?lat=${lat}&lon=${lon}&appid=$apiKey&units=metric",
    );

    final response = await client.get(url);

    print(url);

    if (response.statusCode == 200) {
      return Weather.fromMap(jsonDecode(response.body));
    } else {
      print(
        "Failed to fetch weather. ${response.statusCode} ${response.body} ",
      );
      throw Exception("Failed to fetch weather. ");
    }
  }
}
