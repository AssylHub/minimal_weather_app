// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:weather_app2/features/weather/domain/entities/weather_entity.dart';

class Weather extends Equatable {
  final String cityName;
  final double temperature;
  final String description;
  final int humidity;
  final double windSpeed;

  Weather({
    required this.cityName,
    required this.temperature,
    required this.description,
    required this.humidity,
    required this.windSpeed,
  });

  @override
  List<Object> get props {
    return [cityName, temperature, description, humidity, windSpeed];
  }

  Weather copyWith({
    String? cityName,
    double? temperature,
    String? description,
    int? humidity,
    double? windSpeed,
  }) {
    return Weather(
      cityName: cityName ?? this.cityName,
      temperature: temperature ?? this.temperature,
      description: description ?? this.description,
      humidity: humidity ?? this.humidity,
      windSpeed: windSpeed ?? this.windSpeed,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cityName': cityName,
      'temperature': temperature,
      'description': description,
      'humidity': humidity,
      'windSpeed': windSpeed,
    };
  }

  factory Weather.fromMap(Map<String, dynamic> map) {
    return Weather(
      cityName: map['cityName'] as String,
      temperature: map['temperature'] as double,
      description: map['description'] as String,
      humidity: map['humidity'] as int,
      windSpeed: map['windSpeed'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory Weather.fromJson(String source) =>
      Weather.fromMap(json.decode(source) as Map<String, dynamic>);

  WeatherEntity toEntity() => WeatherEntity(
    cityName: cityName,
    temperature: temperature,
    description: description,
    humidity: humidity,
    windSpeed: windSpeed,
  );

  factory Weather.fromEntity(WeatherEntity weatherEntity) => Weather(
    cityName: weatherEntity.cityName,
    temperature: weatherEntity.temperature,
    description: weatherEntity.description,
    humidity: weatherEntity.humidity,
    windSpeed: weatherEntity.windSpeed,
  );

  @override
  bool get stringify => true;
}
