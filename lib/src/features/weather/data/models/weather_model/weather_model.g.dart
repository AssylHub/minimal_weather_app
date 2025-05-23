// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) =>
    _WeatherModel(
      daily: const DailyWeatherModelConverter().fromJson(
        json['daily'] as Map<String, dynamic>,
      ),
      hourly: const HourlyWeatherModelConverter().fromJson(
        json['hourly'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$WeatherModelToJson(_WeatherModel instance) =>
    <String, dynamic>{
      'daily': const DailyWeatherModelConverter().toJson(instance.daily),
      'hourly': const HourlyWeatherModelConverter().toJson(instance.hourly),
    };
