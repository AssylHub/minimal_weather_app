import 'package:freezed_annotation/freezed_annotation.dart';

part 'hourly_weather_model.freezed.dart';
part 'hourly_weather_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class HourlyWeatherModelConverter implements JsonConverter<HourlyWeatherModel, Map<String, dynamic>> {
  const HourlyWeatherModelConverter();

  @override
  HourlyWeatherModel fromJson(Map<String, dynamic> json) {
    return HourlyWeatherModel.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(HourlyWeatherModel model) => model.toJson();
}

@freezed
abstract class HourlyWeatherModel with _$HourlyWeatherModel {
  const HourlyWeatherModel._();
  
  const factory HourlyWeatherModel({
    @JsonKey(name: 'time') required List<String> time,
    @JsonKey(name: 'weathercode') required List<int> weatherCodes,
    @JsonKey(name: 'temperature_2m') required List<double> temperatures,
    @JsonKey(name: 'apparent_temperature') required List<double> feelsLikeTemps,
    @JsonKey(name: 'dewpoint_2m') required List<double> dewpoints,
    @JsonKey(name: 'visibility') required List<int> visibility,
    @JsonKey(name: 'winddirection_10m') required List<int> direction,
    @JsonKey(name: 'windspeed_10m') required List<double> windSpeed,
    @JsonKey(name: 'windgusts_10m') required List<double> windGust,
    @JsonKey(name: 'evapotranspiration') required List<double> evapotranspiration,
    @JsonKey(name: 'precipitation') required List<double> precipitation,
    @JsonKey(name: 'rain') required List<double> rain,
    @JsonKey(name: 'precipitation_probability') required List<int> precipitationProbability,
    @JsonKey(name: 'relativehumidity_2m') required List<int> humidity,
    @JsonKey(name: 'cloudcover') required List<int> cloudCover,
    @JsonKey(name: 'surface_pressure') required List<double> surfacePressure,
    @JsonKey(name: 'uv_index') required List<double> uvIndex,
    @JsonKey(name: 'shortwave_radiation') required List<double> radiation,
  }) = _HourlyWeatherModel;

  factory HourlyWeatherModel.fromJson(Map<String, dynamic> json) =>
      _$HourlyWeatherModelFromJson(json);
}