// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hourly_weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HourlyWeatherModelConverter _$HourlyWeatherModelConverterFromJson(
  Map<String, dynamic> json,
) => HourlyWeatherModelConverter();

Map<String, dynamic> _$HourlyWeatherModelConverterToJson(
  HourlyWeatherModelConverter instance,
) => <String, dynamic>{};

_HourlyWeatherModel _$HourlyWeatherModelFromJson(Map<String, dynamic> json) =>
    _HourlyWeatherModel(
      time: (json['time'] as List<dynamic>).map((e) => e as String).toList(),
      weatherCodes:
          (json['weathercode'] as List<dynamic>)
              .map((e) => (e as num).toInt())
              .toList(),
      temperatures:
          (json['temperature_2m'] as List<dynamic>)
              .map((e) => (e as num).toDouble())
              .toList(),
      feelsLikeTemps:
          (json['apparent_temperature'] as List<dynamic>)
              .map((e) => (e as num).toDouble())
              .toList(),
      dewpoints:
          (json['dewpoint_2m'] as List<dynamic>)
              .map((e) => (e as num).toDouble())
              .toList(),
      visibility:
          (json['visibility'] as List<dynamic>)
              .map((e) => (e as num).toInt())
              .toList(),
      direction:
          (json['winddirection_10m'] as List<dynamic>)
              .map((e) => (e as num).toInt())
              .toList(),
      windSpeed:
          (json['windspeed_10m'] as List<dynamic>)
              .map((e) => (e as num).toDouble())
              .toList(),
      windGust:
          (json['windgusts_10m'] as List<dynamic>)
              .map((e) => (e as num).toDouble())
              .toList(),
      evapotranspiration:
          (json['evapotranspiration'] as List<dynamic>)
              .map((e) => (e as num).toDouble())
              .toList(),
      precipitation:
          (json['precipitation'] as List<dynamic>)
              .map((e) => (e as num).toDouble())
              .toList(),
      rain:
          (json['rain'] as List<dynamic>)
              .map((e) => (e as num).toDouble())
              .toList(),
      precipitationProbability:
          (json['precipitation_probability'] as List<dynamic>)
              .map((e) => (e as num).toInt())
              .toList(),
      humidity:
          (json['relativehumidity_2m'] as List<dynamic>)
              .map((e) => (e as num).toInt())
              .toList(),
      cloudCover:
          (json['cloudcover'] as List<dynamic>)
              .map((e) => (e as num).toInt())
              .toList(),
      surfacePressure:
          (json['surface_pressure'] as List<dynamic>)
              .map((e) => (e as num).toDouble())
              .toList(),
      uvIndex:
          (json['uv_index'] as List<dynamic>)
              .map((e) => (e as num).toDouble())
              .toList(),
      radiation:
          (json['shortwave_radiation'] as List<dynamic>)
              .map((e) => (e as num).toDouble())
              .toList(),
    );

Map<String, dynamic> _$HourlyWeatherModelToJson(_HourlyWeatherModel instance) =>
    <String, dynamic>{
      'time': instance.time,
      'weathercode': instance.weatherCodes,
      'temperature_2m': instance.temperatures,
      'apparent_temperature': instance.feelsLikeTemps,
      'dewpoint_2m': instance.dewpoints,
      'visibility': instance.visibility,
      'winddirection_10m': instance.direction,
      'windspeed_10m': instance.windSpeed,
      'windgusts_10m': instance.windGust,
      'evapotranspiration': instance.evapotranspiration,
      'precipitation': instance.precipitation,
      'rain': instance.rain,
      'precipitation_probability': instance.precipitationProbability,
      'relativehumidity_2m': instance.humidity,
      'cloudcover': instance.cloudCover,
      'surface_pressure': instance.surfacePressure,
      'uv_index': instance.uvIndex,
      'shortwave_radiation': instance.radiation,
    };
