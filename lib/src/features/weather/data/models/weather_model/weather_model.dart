import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app2/src/features/weather/data/models/daily_weather_model/daily_weather_model.dart';
import 'package:weather_app2/src/features/weather/data/models/hourly_weather_model/hourly_weather_model.dart';
import 'package:weather_app2/src/features/weather/domain/entities/weather_entity.dart';

part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

@freezed
abstract class WeatherModel with _$WeatherModel {
  const WeatherModel._();

  const factory WeatherModel({
    @DailyWeatherModelConverter() required DailyWeatherModel daily,
    @HourlyWeatherModelConverter() required HourlyWeatherModel hourly,
  }) = _WeatherModel;

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);

  WeatherEntity toEntity() => WeatherEntity(
    timeDaily: daily.timeDaily,
    weatherCodesDaily: daily.weatherCodesDaily,
    time: hourly.time,
    temperatures: hourly.temperatures,
    feelsLikeTemps: hourly.feelsLikeTemps,
    weatherCodes: hourly.weatherCodes,
    maxTemps: daily.maxTemps,
    minTemps: daily.minTemps,
    sunriseList: daily.sunriseList,
    sunsetList: daily.sunsetList,
    dewpoints: hourly.dewpoints,
    visibility: hourly.visibility,
    direction: hourly.direction,
    windSpeed: hourly.windSpeed,
    windGust: hourly.windGust,
    evapotranspiration: hourly.evapotranspiration,
    precipitation: hourly.precipitation,
    rain: hourly.rain,
    precipitationProbability: hourly.precipitationProbability,
    humidity: hourly.humidity,
    cloudCover: hourly.cloudCover,
    surfacePressure: hourly.surfacePressure,
    uvIndex: hourly.uvIndex,
    radiation: hourly.radiation,
  );
}
// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'dart:convert';

// import 'package:equatable/equatable.dart';
// import 'package:weather_app2/src/features/weather/domain/entities/weather_entity.dart';

// class Weather extends Equatable {
//   final List<String> timeDaily;
//   final List<int> weatherCodesDaily;
//   final List<double> maxTemps;
//   final List<double> minTemps;
//   final List<String> sunriseList;
//   final List<String> sunsetList;
//   final List<String> time;
//   final List<int> weatherCodes;
//   final List<double> temperatures;
//   final List<double> feelsLikeTemps;
//   final List<double> dewpoints;
//   final List<int> visibility;
//   final List<int> direction;
//   final List<double> windSpeed;
//   final List<double> windGust;
//   final List<double> evapotranspiration;
//   final List<double> precipitation;
//   final List<double> rain;
//   final List<int> precipitationProbability;
//   final List<int> humidity;
//   final List<int> cloudCover;
//   final List<double> surfacePressure;
//   final List<double> uvIndex;
//   final List<double> radiation;

//   const Weather({
//     required this.timeDaily,
//     required this.weatherCodesDaily,
//     required this.time,
//     required this.weatherCodes,
//     required this.temperatures,
//     required this.feelsLikeTemps,
//     required this.minTemps,
//     required this.maxTemps,
//     required this.sunriseList,
//     required this.sunsetList,
//     required this.dewpoints,
//     required this.visibility,
//     required this.direction,
//     required this.windSpeed,
//     required this.windGust,
//     required this.evapotranspiration,
//     required this.precipitation,
//     required this.rain,
//     required this.precipitationProbability,
//     required this.humidity,
//     required this.cloudCover,
//     required this.surfacePressure,
//     required this.uvIndex,
//     required this.radiation,
//   });

//   @override
//   List<Object> get props {
//     return [
//       timeDaily,
//       weatherCodesDaily,
//       time,
//       weatherCodes,
//       temperatures,
//       feelsLikeTemps,
//       minTemps,
//       maxTemps,
//       sunriseList,
//       sunsetList,
//       dewpoints,
//       visibility,
//       direction,
//       windSpeed,
//       windGust,
//       evapotranspiration,
//       precipitation,
//       rain,
//       precipitationProbability,
//       humidity,
//       cloudCover,
//       surfacePressure,
//       uvIndex,
//       radiation,
//     ];
//   }

//   factory Weather.fromMap(Map<String, dynamic> map) {
//     final hourly = map['hourly'];
//     final daily = map['daily'];
//     // final utcOffset = map['utc_offset_seconds'] ~/ 3600;

//     return Weather(
//       timeDaily: List<String>.from(daily['time']),
//       weatherCodesDaily: List<int>.from(daily['weathercode']),
//       minTemps: List<double>.from(
//         daily['temperature_2m_min'].map((e) => e.toDouble()),
//       ),
//       maxTemps: List<double>.from(
//         daily['temperature_2m_max'].map((e) => e.toDouble()),
//       ),

//       sunriseList: List<String>.from(daily['sunrise']),
//       sunsetList: List<String>.from(daily['sunset']),
//       time: List<String>.from(hourly['time']),
//       weatherCodes: List<int>.from(hourly['weathercode']),
//       temperatures: List<double>.from(
//         hourly['temperature_2m'].map((e) => (e as num).toDouble()),
//       ),
//       feelsLikeTemps: List<double>.from(
//         hourly['apparent_temperature'].map((e) => (e as num).toDouble()),
//       ),
//       dewpoints: List<double>.from(
//         hourly["dewpoint_2m"].map((e) => e.toDouble()),
//       ),
//       visibility: List<int>.from(hourly["visibility"].map((e) => e.toInt())),
//       direction: List<int>.from(
//         hourly["winddirection_10m"].map((e) => e.toInt()),
//       ),
//       windSpeed: List<double>.from(
//         hourly["windspeed_10m"].map((e) => e.toDouble()),
//       ),
//       windGust: List<double>.from(
//         hourly["windgusts_10m"].map((e) => e.toDouble()),
//       ),
//       evapotranspiration: List<double>.from(
//         hourly["evapotranspiration"].map((e) => e.toDouble()),
//       ),
//       precipitation: List<double>.from(
//         hourly["precipitation"].map((e) => e.toDouble()),
//       ),
//       rain: List<double>.from(hourly["rain"].map((e) => e.toDouble())),
//       precipitationProbability: List<int>.from(
//         hourly["precipitation_probability"].map((e) => e.toInt()),
//       ),
//       humidity: List<int>.from(
//         hourly["relativehumidity_2m"].map((e) => e.toInt()),
//       ),
//       cloudCover: List<int>.from(hourly["cloudcover"].map((e) => e.toInt())),
//       surfacePressure: List<double>.from(
//         hourly["surface_pressure"].map((e) => e.toDouble()),
//       ),
//       uvIndex: List<double>.from(hourly["uv_index"].map((e) => e.toDouble())),
//       radiation: List<double>.from(
//         hourly["shortwave_radiation"].map((e) => e.toDouble()),
//       ),
//     );
//   }

//   factory Weather.fromJson(String source) =>
//       Weather.fromMap(json.decode(source) as Map<String, dynamic>);

//   WeatherEntity toEntity() => WeatherEntity(
//     timeDaily: timeDaily,
//     weatherCodesDaily: weatherCodesDaily,
//     time: time,
//     temperatures: temperatures,
//     feelsLikeTemps: feelsLikeTemps,
//     weatherCodes: weatherCodes,
//     maxTemps: maxTemps,
//     minTemps: minTemps,
//     sunriseList: sunriseList,
//     sunsetList: sunsetList,
//     dewpoints: dewpoints,
//     visibility: visibility,
//     direction: direction,
//     windSpeed: windSpeed,
//     windGust: windGust,
//     evapotranspiration: evapotranspiration,
//     precipitation: precipitation,
//     rain: rain,
//     precipitationProbability: precipitationProbability,
//     humidity: humidity,
//     cloudCover: cloudCover,
//     surfacePressure: surfacePressure,
//     uvIndex: uvIndex,
//     radiation: radiation,
//   );

//   factory Weather.fromEntity(WeatherEntity weatherEntity) => Weather(
//     timeDaily: weatherEntity.timeDaily,
//     weatherCodesDaily: weatherEntity.weatherCodesDaily,
//     time: weatherEntity.time,
//     temperatures: weatherEntity.temperatures,
//     feelsLikeTemps: weatherEntity.feelsLikeTemps,
//     weatherCodes: weatherEntity.weatherCodes,
//     minTemps: weatherEntity.minTemps,
//     maxTemps: weatherEntity.maxTemps,
//     sunriseList: weatherEntity.sunriseList,
//     sunsetList: weatherEntity.sunsetList,
//     dewpoints: weatherEntity.dewpoints,
//     visibility: weatherEntity.visibility,
//     direction: weatherEntity.direction,
//     windSpeed: weatherEntity.windSpeed,
//     windGust: weatherEntity.windGust,
//     evapotranspiration: weatherEntity.evapotranspiration,
//     precipitation: weatherEntity.precipitation,
//     rain: weatherEntity.rain,
//     precipitationProbability: weatherEntity.precipitationProbability,
//     humidity: weatherEntity.humidity,
//     cloudCover: weatherEntity.cloudCover,
//     surfacePressure: weatherEntity.surfacePressure,
//     uvIndex: weatherEntity.uvIndex,
//     radiation: weatherEntity.radiation,
//   );

//   @override
//   bool get stringify => true;
// }
