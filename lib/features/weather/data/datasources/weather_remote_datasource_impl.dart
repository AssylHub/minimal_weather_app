import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:weather_app2/features/weather/data/datasources/weather_remote_datasource.dart';
import 'package:weather_app2/features/weather/data/models/weather_model.dart';

import 'package:http/http.dart' as http;

@LazySingleton(as: WeatherRemoteDatasource)
class WeatherRemoteDatasourceImpl implements WeatherRemoteDatasource {
  final http.Client client;
  final String apiKey;

  WeatherRemoteDatasourceImpl({required this.client, required this.apiKey});

  @override
  Future<Weather> getWeatherByCord(
    double lat,
    double lon,
    String cityName,
    String district,
  ) async {
    final url = Uri.parse(
      "https://api.open-meteo.com/v1/forecast?latitude=$lat&longitude=$lon"
      "&hourly=temperature_2m,relativehumidity_2m,apparent_temperature,precipitation,rain,weathercode,surface_pressure,visibility,evapotranspiration,windspeed_10m,winddirection_10m,windgusts_10m,cloudcover,uv_index,dewpoint_2m,precipitation_probability,shortwave_radiation"
      "&daily=weathercode,temperature_2m_max,temperature_2m_min,apparent_temperature_max,apparent_temperature_min,sunrise,sunset,precipitation_sum,precipitation_probability_max,windspeed_10m_max,windgusts_10m_max,uv_index_max,rain_sum,winddirection_10m_dominant"
      "&forecast_days=12&timezone=auto",
    );

    // print(url);

    final response = await client.get(url);

    // print(response.body);

    if (response.statusCode == 200) {
      return Weather.fromMap(jsonDecode(response.body));
    } else {
      // print(
      //   "Failed to fetch weather. ${response.statusCode} ${response.body} ",
      // );
      throw Exception("Failed to fetch weather. ");
    }
  }
}
