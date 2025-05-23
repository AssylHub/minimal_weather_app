// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hourly_weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HourlyWeatherModel {

@JsonKey(name: 'time') List<String> get time;@JsonKey(name: 'weathercode') List<int> get weatherCodes;@JsonKey(name: 'temperature_2m') List<double> get temperatures;@JsonKey(name: 'apparent_temperature') List<double> get feelsLikeTemps;@JsonKey(name: 'dewpoint_2m') List<double> get dewpoints;@JsonKey(name: 'visibility') List<int> get visibility;@JsonKey(name: 'winddirection_10m') List<int> get direction;@JsonKey(name: 'windspeed_10m') List<double> get windSpeed;@JsonKey(name: 'windgusts_10m') List<double> get windGust;@JsonKey(name: 'evapotranspiration') List<double> get evapotranspiration;@JsonKey(name: 'precipitation') List<double> get precipitation;@JsonKey(name: 'rain') List<double> get rain;@JsonKey(name: 'precipitation_probability') List<int> get precipitationProbability;@JsonKey(name: 'relativehumidity_2m') List<int> get humidity;@JsonKey(name: 'cloudcover') List<int> get cloudCover;@JsonKey(name: 'surface_pressure') List<double> get surfacePressure;@JsonKey(name: 'uv_index') List<double> get uvIndex;@JsonKey(name: 'shortwave_radiation') List<double> get radiation;
/// Create a copy of HourlyWeatherModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HourlyWeatherModelCopyWith<HourlyWeatherModel> get copyWith => _$HourlyWeatherModelCopyWithImpl<HourlyWeatherModel>(this as HourlyWeatherModel, _$identity);

  /// Serializes this HourlyWeatherModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HourlyWeatherModel&&const DeepCollectionEquality().equals(other.time, time)&&const DeepCollectionEquality().equals(other.weatherCodes, weatherCodes)&&const DeepCollectionEquality().equals(other.temperatures, temperatures)&&const DeepCollectionEquality().equals(other.feelsLikeTemps, feelsLikeTemps)&&const DeepCollectionEquality().equals(other.dewpoints, dewpoints)&&const DeepCollectionEquality().equals(other.visibility, visibility)&&const DeepCollectionEquality().equals(other.direction, direction)&&const DeepCollectionEquality().equals(other.windSpeed, windSpeed)&&const DeepCollectionEquality().equals(other.windGust, windGust)&&const DeepCollectionEquality().equals(other.evapotranspiration, evapotranspiration)&&const DeepCollectionEquality().equals(other.precipitation, precipitation)&&const DeepCollectionEquality().equals(other.rain, rain)&&const DeepCollectionEquality().equals(other.precipitationProbability, precipitationProbability)&&const DeepCollectionEquality().equals(other.humidity, humidity)&&const DeepCollectionEquality().equals(other.cloudCover, cloudCover)&&const DeepCollectionEquality().equals(other.surfacePressure, surfacePressure)&&const DeepCollectionEquality().equals(other.uvIndex, uvIndex)&&const DeepCollectionEquality().equals(other.radiation, radiation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(time),const DeepCollectionEquality().hash(weatherCodes),const DeepCollectionEquality().hash(temperatures),const DeepCollectionEquality().hash(feelsLikeTemps),const DeepCollectionEquality().hash(dewpoints),const DeepCollectionEquality().hash(visibility),const DeepCollectionEquality().hash(direction),const DeepCollectionEquality().hash(windSpeed),const DeepCollectionEquality().hash(windGust),const DeepCollectionEquality().hash(evapotranspiration),const DeepCollectionEquality().hash(precipitation),const DeepCollectionEquality().hash(rain),const DeepCollectionEquality().hash(precipitationProbability),const DeepCollectionEquality().hash(humidity),const DeepCollectionEquality().hash(cloudCover),const DeepCollectionEquality().hash(surfacePressure),const DeepCollectionEquality().hash(uvIndex),const DeepCollectionEquality().hash(radiation));

@override
String toString() {
  return 'HourlyWeatherModel(time: $time, weatherCodes: $weatherCodes, temperatures: $temperatures, feelsLikeTemps: $feelsLikeTemps, dewpoints: $dewpoints, visibility: $visibility, direction: $direction, windSpeed: $windSpeed, windGust: $windGust, evapotranspiration: $evapotranspiration, precipitation: $precipitation, rain: $rain, precipitationProbability: $precipitationProbability, humidity: $humidity, cloudCover: $cloudCover, surfacePressure: $surfacePressure, uvIndex: $uvIndex, radiation: $radiation)';
}


}

/// @nodoc
abstract mixin class $HourlyWeatherModelCopyWith<$Res>  {
  factory $HourlyWeatherModelCopyWith(HourlyWeatherModel value, $Res Function(HourlyWeatherModel) _then) = _$HourlyWeatherModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'time') List<String> time,@JsonKey(name: 'weathercode') List<int> weatherCodes,@JsonKey(name: 'temperature_2m') List<double> temperatures,@JsonKey(name: 'apparent_temperature') List<double> feelsLikeTemps,@JsonKey(name: 'dewpoint_2m') List<double> dewpoints,@JsonKey(name: 'visibility') List<int> visibility,@JsonKey(name: 'winddirection_10m') List<int> direction,@JsonKey(name: 'windspeed_10m') List<double> windSpeed,@JsonKey(name: 'windgusts_10m') List<double> windGust,@JsonKey(name: 'evapotranspiration') List<double> evapotranspiration,@JsonKey(name: 'precipitation') List<double> precipitation,@JsonKey(name: 'rain') List<double> rain,@JsonKey(name: 'precipitation_probability') List<int> precipitationProbability,@JsonKey(name: 'relativehumidity_2m') List<int> humidity,@JsonKey(name: 'cloudcover') List<int> cloudCover,@JsonKey(name: 'surface_pressure') List<double> surfacePressure,@JsonKey(name: 'uv_index') List<double> uvIndex,@JsonKey(name: 'shortwave_radiation') List<double> radiation
});




}
/// @nodoc
class _$HourlyWeatherModelCopyWithImpl<$Res>
    implements $HourlyWeatherModelCopyWith<$Res> {
  _$HourlyWeatherModelCopyWithImpl(this._self, this._then);

  final HourlyWeatherModel _self;
  final $Res Function(HourlyWeatherModel) _then;

/// Create a copy of HourlyWeatherModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? time = null,Object? weatherCodes = null,Object? temperatures = null,Object? feelsLikeTemps = null,Object? dewpoints = null,Object? visibility = null,Object? direction = null,Object? windSpeed = null,Object? windGust = null,Object? evapotranspiration = null,Object? precipitation = null,Object? rain = null,Object? precipitationProbability = null,Object? humidity = null,Object? cloudCover = null,Object? surfacePressure = null,Object? uvIndex = null,Object? radiation = null,}) {
  return _then(_self.copyWith(
time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as List<String>,weatherCodes: null == weatherCodes ? _self.weatherCodes : weatherCodes // ignore: cast_nullable_to_non_nullable
as List<int>,temperatures: null == temperatures ? _self.temperatures : temperatures // ignore: cast_nullable_to_non_nullable
as List<double>,feelsLikeTemps: null == feelsLikeTemps ? _self.feelsLikeTemps : feelsLikeTemps // ignore: cast_nullable_to_non_nullable
as List<double>,dewpoints: null == dewpoints ? _self.dewpoints : dewpoints // ignore: cast_nullable_to_non_nullable
as List<double>,visibility: null == visibility ? _self.visibility : visibility // ignore: cast_nullable_to_non_nullable
as List<int>,direction: null == direction ? _self.direction : direction // ignore: cast_nullable_to_non_nullable
as List<int>,windSpeed: null == windSpeed ? _self.windSpeed : windSpeed // ignore: cast_nullable_to_non_nullable
as List<double>,windGust: null == windGust ? _self.windGust : windGust // ignore: cast_nullable_to_non_nullable
as List<double>,evapotranspiration: null == evapotranspiration ? _self.evapotranspiration : evapotranspiration // ignore: cast_nullable_to_non_nullable
as List<double>,precipitation: null == precipitation ? _self.precipitation : precipitation // ignore: cast_nullable_to_non_nullable
as List<double>,rain: null == rain ? _self.rain : rain // ignore: cast_nullable_to_non_nullable
as List<double>,precipitationProbability: null == precipitationProbability ? _self.precipitationProbability : precipitationProbability // ignore: cast_nullable_to_non_nullable
as List<int>,humidity: null == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as List<int>,cloudCover: null == cloudCover ? _self.cloudCover : cloudCover // ignore: cast_nullable_to_non_nullable
as List<int>,surfacePressure: null == surfacePressure ? _self.surfacePressure : surfacePressure // ignore: cast_nullable_to_non_nullable
as List<double>,uvIndex: null == uvIndex ? _self.uvIndex : uvIndex // ignore: cast_nullable_to_non_nullable
as List<double>,radiation: null == radiation ? _self.radiation : radiation // ignore: cast_nullable_to_non_nullable
as List<double>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _HourlyWeatherModel extends HourlyWeatherModel {
  const _HourlyWeatherModel({@JsonKey(name: 'time') required final  List<String> time, @JsonKey(name: 'weathercode') required final  List<int> weatherCodes, @JsonKey(name: 'temperature_2m') required final  List<double> temperatures, @JsonKey(name: 'apparent_temperature') required final  List<double> feelsLikeTemps, @JsonKey(name: 'dewpoint_2m') required final  List<double> dewpoints, @JsonKey(name: 'visibility') required final  List<int> visibility, @JsonKey(name: 'winddirection_10m') required final  List<int> direction, @JsonKey(name: 'windspeed_10m') required final  List<double> windSpeed, @JsonKey(name: 'windgusts_10m') required final  List<double> windGust, @JsonKey(name: 'evapotranspiration') required final  List<double> evapotranspiration, @JsonKey(name: 'precipitation') required final  List<double> precipitation, @JsonKey(name: 'rain') required final  List<double> rain, @JsonKey(name: 'precipitation_probability') required final  List<int> precipitationProbability, @JsonKey(name: 'relativehumidity_2m') required final  List<int> humidity, @JsonKey(name: 'cloudcover') required final  List<int> cloudCover, @JsonKey(name: 'surface_pressure') required final  List<double> surfacePressure, @JsonKey(name: 'uv_index') required final  List<double> uvIndex, @JsonKey(name: 'shortwave_radiation') required final  List<double> radiation}): _time = time,_weatherCodes = weatherCodes,_temperatures = temperatures,_feelsLikeTemps = feelsLikeTemps,_dewpoints = dewpoints,_visibility = visibility,_direction = direction,_windSpeed = windSpeed,_windGust = windGust,_evapotranspiration = evapotranspiration,_precipitation = precipitation,_rain = rain,_precipitationProbability = precipitationProbability,_humidity = humidity,_cloudCover = cloudCover,_surfacePressure = surfacePressure,_uvIndex = uvIndex,_radiation = radiation,super._();
  factory _HourlyWeatherModel.fromJson(Map<String, dynamic> json) => _$HourlyWeatherModelFromJson(json);

 final  List<String> _time;
@override@JsonKey(name: 'time') List<String> get time {
  if (_time is EqualUnmodifiableListView) return _time;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_time);
}

 final  List<int> _weatherCodes;
@override@JsonKey(name: 'weathercode') List<int> get weatherCodes {
  if (_weatherCodes is EqualUnmodifiableListView) return _weatherCodes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_weatherCodes);
}

 final  List<double> _temperatures;
@override@JsonKey(name: 'temperature_2m') List<double> get temperatures {
  if (_temperatures is EqualUnmodifiableListView) return _temperatures;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_temperatures);
}

 final  List<double> _feelsLikeTemps;
@override@JsonKey(name: 'apparent_temperature') List<double> get feelsLikeTemps {
  if (_feelsLikeTemps is EqualUnmodifiableListView) return _feelsLikeTemps;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_feelsLikeTemps);
}

 final  List<double> _dewpoints;
@override@JsonKey(name: 'dewpoint_2m') List<double> get dewpoints {
  if (_dewpoints is EqualUnmodifiableListView) return _dewpoints;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_dewpoints);
}

 final  List<int> _visibility;
@override@JsonKey(name: 'visibility') List<int> get visibility {
  if (_visibility is EqualUnmodifiableListView) return _visibility;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_visibility);
}

 final  List<int> _direction;
@override@JsonKey(name: 'winddirection_10m') List<int> get direction {
  if (_direction is EqualUnmodifiableListView) return _direction;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_direction);
}

 final  List<double> _windSpeed;
@override@JsonKey(name: 'windspeed_10m') List<double> get windSpeed {
  if (_windSpeed is EqualUnmodifiableListView) return _windSpeed;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_windSpeed);
}

 final  List<double> _windGust;
@override@JsonKey(name: 'windgusts_10m') List<double> get windGust {
  if (_windGust is EqualUnmodifiableListView) return _windGust;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_windGust);
}

 final  List<double> _evapotranspiration;
@override@JsonKey(name: 'evapotranspiration') List<double> get evapotranspiration {
  if (_evapotranspiration is EqualUnmodifiableListView) return _evapotranspiration;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_evapotranspiration);
}

 final  List<double> _precipitation;
@override@JsonKey(name: 'precipitation') List<double> get precipitation {
  if (_precipitation is EqualUnmodifiableListView) return _precipitation;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_precipitation);
}

 final  List<double> _rain;
@override@JsonKey(name: 'rain') List<double> get rain {
  if (_rain is EqualUnmodifiableListView) return _rain;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rain);
}

 final  List<int> _precipitationProbability;
@override@JsonKey(name: 'precipitation_probability') List<int> get precipitationProbability {
  if (_precipitationProbability is EqualUnmodifiableListView) return _precipitationProbability;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_precipitationProbability);
}

 final  List<int> _humidity;
@override@JsonKey(name: 'relativehumidity_2m') List<int> get humidity {
  if (_humidity is EqualUnmodifiableListView) return _humidity;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_humidity);
}

 final  List<int> _cloudCover;
@override@JsonKey(name: 'cloudcover') List<int> get cloudCover {
  if (_cloudCover is EqualUnmodifiableListView) return _cloudCover;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cloudCover);
}

 final  List<double> _surfacePressure;
@override@JsonKey(name: 'surface_pressure') List<double> get surfacePressure {
  if (_surfacePressure is EqualUnmodifiableListView) return _surfacePressure;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_surfacePressure);
}

 final  List<double> _uvIndex;
@override@JsonKey(name: 'uv_index') List<double> get uvIndex {
  if (_uvIndex is EqualUnmodifiableListView) return _uvIndex;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_uvIndex);
}

 final  List<double> _radiation;
@override@JsonKey(name: 'shortwave_radiation') List<double> get radiation {
  if (_radiation is EqualUnmodifiableListView) return _radiation;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_radiation);
}


/// Create a copy of HourlyWeatherModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HourlyWeatherModelCopyWith<_HourlyWeatherModel> get copyWith => __$HourlyWeatherModelCopyWithImpl<_HourlyWeatherModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HourlyWeatherModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HourlyWeatherModel&&const DeepCollectionEquality().equals(other._time, _time)&&const DeepCollectionEquality().equals(other._weatherCodes, _weatherCodes)&&const DeepCollectionEquality().equals(other._temperatures, _temperatures)&&const DeepCollectionEquality().equals(other._feelsLikeTemps, _feelsLikeTemps)&&const DeepCollectionEquality().equals(other._dewpoints, _dewpoints)&&const DeepCollectionEquality().equals(other._visibility, _visibility)&&const DeepCollectionEquality().equals(other._direction, _direction)&&const DeepCollectionEquality().equals(other._windSpeed, _windSpeed)&&const DeepCollectionEquality().equals(other._windGust, _windGust)&&const DeepCollectionEquality().equals(other._evapotranspiration, _evapotranspiration)&&const DeepCollectionEquality().equals(other._precipitation, _precipitation)&&const DeepCollectionEquality().equals(other._rain, _rain)&&const DeepCollectionEquality().equals(other._precipitationProbability, _precipitationProbability)&&const DeepCollectionEquality().equals(other._humidity, _humidity)&&const DeepCollectionEquality().equals(other._cloudCover, _cloudCover)&&const DeepCollectionEquality().equals(other._surfacePressure, _surfacePressure)&&const DeepCollectionEquality().equals(other._uvIndex, _uvIndex)&&const DeepCollectionEquality().equals(other._radiation, _radiation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_time),const DeepCollectionEquality().hash(_weatherCodes),const DeepCollectionEquality().hash(_temperatures),const DeepCollectionEquality().hash(_feelsLikeTemps),const DeepCollectionEquality().hash(_dewpoints),const DeepCollectionEquality().hash(_visibility),const DeepCollectionEquality().hash(_direction),const DeepCollectionEquality().hash(_windSpeed),const DeepCollectionEquality().hash(_windGust),const DeepCollectionEquality().hash(_evapotranspiration),const DeepCollectionEquality().hash(_precipitation),const DeepCollectionEquality().hash(_rain),const DeepCollectionEquality().hash(_precipitationProbability),const DeepCollectionEquality().hash(_humidity),const DeepCollectionEquality().hash(_cloudCover),const DeepCollectionEquality().hash(_surfacePressure),const DeepCollectionEquality().hash(_uvIndex),const DeepCollectionEquality().hash(_radiation));

@override
String toString() {
  return 'HourlyWeatherModel(time: $time, weatherCodes: $weatherCodes, temperatures: $temperatures, feelsLikeTemps: $feelsLikeTemps, dewpoints: $dewpoints, visibility: $visibility, direction: $direction, windSpeed: $windSpeed, windGust: $windGust, evapotranspiration: $evapotranspiration, precipitation: $precipitation, rain: $rain, precipitationProbability: $precipitationProbability, humidity: $humidity, cloudCover: $cloudCover, surfacePressure: $surfacePressure, uvIndex: $uvIndex, radiation: $radiation)';
}


}

/// @nodoc
abstract mixin class _$HourlyWeatherModelCopyWith<$Res> implements $HourlyWeatherModelCopyWith<$Res> {
  factory _$HourlyWeatherModelCopyWith(_HourlyWeatherModel value, $Res Function(_HourlyWeatherModel) _then) = __$HourlyWeatherModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'time') List<String> time,@JsonKey(name: 'weathercode') List<int> weatherCodes,@JsonKey(name: 'temperature_2m') List<double> temperatures,@JsonKey(name: 'apparent_temperature') List<double> feelsLikeTemps,@JsonKey(name: 'dewpoint_2m') List<double> dewpoints,@JsonKey(name: 'visibility') List<int> visibility,@JsonKey(name: 'winddirection_10m') List<int> direction,@JsonKey(name: 'windspeed_10m') List<double> windSpeed,@JsonKey(name: 'windgusts_10m') List<double> windGust,@JsonKey(name: 'evapotranspiration') List<double> evapotranspiration,@JsonKey(name: 'precipitation') List<double> precipitation,@JsonKey(name: 'rain') List<double> rain,@JsonKey(name: 'precipitation_probability') List<int> precipitationProbability,@JsonKey(name: 'relativehumidity_2m') List<int> humidity,@JsonKey(name: 'cloudcover') List<int> cloudCover,@JsonKey(name: 'surface_pressure') List<double> surfacePressure,@JsonKey(name: 'uv_index') List<double> uvIndex,@JsonKey(name: 'shortwave_radiation') List<double> radiation
});




}
/// @nodoc
class __$HourlyWeatherModelCopyWithImpl<$Res>
    implements _$HourlyWeatherModelCopyWith<$Res> {
  __$HourlyWeatherModelCopyWithImpl(this._self, this._then);

  final _HourlyWeatherModel _self;
  final $Res Function(_HourlyWeatherModel) _then;

/// Create a copy of HourlyWeatherModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? time = null,Object? weatherCodes = null,Object? temperatures = null,Object? feelsLikeTemps = null,Object? dewpoints = null,Object? visibility = null,Object? direction = null,Object? windSpeed = null,Object? windGust = null,Object? evapotranspiration = null,Object? precipitation = null,Object? rain = null,Object? precipitationProbability = null,Object? humidity = null,Object? cloudCover = null,Object? surfacePressure = null,Object? uvIndex = null,Object? radiation = null,}) {
  return _then(_HourlyWeatherModel(
time: null == time ? _self._time : time // ignore: cast_nullable_to_non_nullable
as List<String>,weatherCodes: null == weatherCodes ? _self._weatherCodes : weatherCodes // ignore: cast_nullable_to_non_nullable
as List<int>,temperatures: null == temperatures ? _self._temperatures : temperatures // ignore: cast_nullable_to_non_nullable
as List<double>,feelsLikeTemps: null == feelsLikeTemps ? _self._feelsLikeTemps : feelsLikeTemps // ignore: cast_nullable_to_non_nullable
as List<double>,dewpoints: null == dewpoints ? _self._dewpoints : dewpoints // ignore: cast_nullable_to_non_nullable
as List<double>,visibility: null == visibility ? _self._visibility : visibility // ignore: cast_nullable_to_non_nullable
as List<int>,direction: null == direction ? _self._direction : direction // ignore: cast_nullable_to_non_nullable
as List<int>,windSpeed: null == windSpeed ? _self._windSpeed : windSpeed // ignore: cast_nullable_to_non_nullable
as List<double>,windGust: null == windGust ? _self._windGust : windGust // ignore: cast_nullable_to_non_nullable
as List<double>,evapotranspiration: null == evapotranspiration ? _self._evapotranspiration : evapotranspiration // ignore: cast_nullable_to_non_nullable
as List<double>,precipitation: null == precipitation ? _self._precipitation : precipitation // ignore: cast_nullable_to_non_nullable
as List<double>,rain: null == rain ? _self._rain : rain // ignore: cast_nullable_to_non_nullable
as List<double>,precipitationProbability: null == precipitationProbability ? _self._precipitationProbability : precipitationProbability // ignore: cast_nullable_to_non_nullable
as List<int>,humidity: null == humidity ? _self._humidity : humidity // ignore: cast_nullable_to_non_nullable
as List<int>,cloudCover: null == cloudCover ? _self._cloudCover : cloudCover // ignore: cast_nullable_to_non_nullable
as List<int>,surfacePressure: null == surfacePressure ? _self._surfacePressure : surfacePressure // ignore: cast_nullable_to_non_nullable
as List<double>,uvIndex: null == uvIndex ? _self._uvIndex : uvIndex // ignore: cast_nullable_to_non_nullable
as List<double>,radiation: null == radiation ? _self._radiation : radiation // ignore: cast_nullable_to_non_nullable
as List<double>,
  ));
}


}

// dart format on
