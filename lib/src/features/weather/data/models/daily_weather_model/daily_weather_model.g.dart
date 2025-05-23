// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DailyWeatherModelConverter _$DailyWeatherModelConverterFromJson(
  Map<String, dynamic> json,
) => DailyWeatherModelConverter();

Map<String, dynamic> _$DailyWeatherModelConverterToJson(
  DailyWeatherModelConverter instance,
) => <String, dynamic>{};

_DailyWeatherModel _$DailyWeatherModelFromJson(Map<String, dynamic> json) =>
    _DailyWeatherModel(
      timeDaily:
          (json['time'] as List<dynamic>).map((e) => e as String).toList(),
      weatherCodesDaily:
          (json['weathercode'] as List<dynamic>)
              .map((e) => (e as num).toInt())
              .toList(),
      maxTemps:
          (json['temperature_2m_max'] as List<dynamic>)
              .map((e) => (e as num).toDouble())
              .toList(),
      minTemps:
          (json['temperature_2m_min'] as List<dynamic>)
              .map((e) => (e as num).toDouble())
              .toList(),
      sunriseList:
          (json['sunrise'] as List<dynamic>).map((e) => e as String).toList(),
      sunsetList:
          (json['sunset'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$DailyWeatherModelToJson(_DailyWeatherModel instance) =>
    <String, dynamic>{
      'time': instance.timeDaily,
      'weathercode': instance.weatherCodesDaily,
      'temperature_2m_max': instance.maxTemps,
      'temperature_2m_min': instance.minTemps,
      'sunrise': instance.sunriseList,
      'sunset': instance.sunsetList,
    };
