import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_weather_model.freezed.dart';
part 'daily_weather_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class DailyWeatherModelConverter implements JsonConverter<DailyWeatherModel, Map<String, dynamic>> {
  const DailyWeatherModelConverter();

  @override
  DailyWeatherModel fromJson(Map<String, dynamic> json) {
    return DailyWeatherModel.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(DailyWeatherModel model) => model.toJson();
}

@freezed
abstract class DailyWeatherModel with _$DailyWeatherModel {
  const DailyWeatherModel._();
  
  const factory DailyWeatherModel({
    @JsonKey(name: 'time') required List<String> timeDaily,
    @JsonKey(name: 'weathercode') required List<int> weatherCodesDaily,
    @JsonKey(name: 'temperature_2m_max') required List<double> maxTemps,
    @JsonKey(name: 'temperature_2m_min') required List<double> minTemps,
    @JsonKey(name: 'sunrise') required List<String> sunriseList,
    @JsonKey(name: 'sunset') required List<String> sunsetList,
  }) = _DailyWeatherModel;

  factory DailyWeatherModel.fromJson(Map<String, dynamic> json) =>
      _$DailyWeatherModelFromJson(json);
}