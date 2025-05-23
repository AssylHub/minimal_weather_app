// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DailyWeatherModel {

@JsonKey(name: 'time') List<String> get timeDaily;@JsonKey(name: 'weathercode') List<int> get weatherCodesDaily;@JsonKey(name: 'temperature_2m_max') List<double> get maxTemps;@JsonKey(name: 'temperature_2m_min') List<double> get minTemps;@JsonKey(name: 'sunrise') List<String> get sunriseList;@JsonKey(name: 'sunset') List<String> get sunsetList;
/// Create a copy of DailyWeatherModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailyWeatherModelCopyWith<DailyWeatherModel> get copyWith => _$DailyWeatherModelCopyWithImpl<DailyWeatherModel>(this as DailyWeatherModel, _$identity);

  /// Serializes this DailyWeatherModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailyWeatherModel&&const DeepCollectionEquality().equals(other.timeDaily, timeDaily)&&const DeepCollectionEquality().equals(other.weatherCodesDaily, weatherCodesDaily)&&const DeepCollectionEquality().equals(other.maxTemps, maxTemps)&&const DeepCollectionEquality().equals(other.minTemps, minTemps)&&const DeepCollectionEquality().equals(other.sunriseList, sunriseList)&&const DeepCollectionEquality().equals(other.sunsetList, sunsetList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(timeDaily),const DeepCollectionEquality().hash(weatherCodesDaily),const DeepCollectionEquality().hash(maxTemps),const DeepCollectionEquality().hash(minTemps),const DeepCollectionEquality().hash(sunriseList),const DeepCollectionEquality().hash(sunsetList));

@override
String toString() {
  return 'DailyWeatherModel(timeDaily: $timeDaily, weatherCodesDaily: $weatherCodesDaily, maxTemps: $maxTemps, minTemps: $minTemps, sunriseList: $sunriseList, sunsetList: $sunsetList)';
}


}

/// @nodoc
abstract mixin class $DailyWeatherModelCopyWith<$Res>  {
  factory $DailyWeatherModelCopyWith(DailyWeatherModel value, $Res Function(DailyWeatherModel) _then) = _$DailyWeatherModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'time') List<String> timeDaily,@JsonKey(name: 'weathercode') List<int> weatherCodesDaily,@JsonKey(name: 'temperature_2m_max') List<double> maxTemps,@JsonKey(name: 'temperature_2m_min') List<double> minTemps,@JsonKey(name: 'sunrise') List<String> sunriseList,@JsonKey(name: 'sunset') List<String> sunsetList
});




}
/// @nodoc
class _$DailyWeatherModelCopyWithImpl<$Res>
    implements $DailyWeatherModelCopyWith<$Res> {
  _$DailyWeatherModelCopyWithImpl(this._self, this._then);

  final DailyWeatherModel _self;
  final $Res Function(DailyWeatherModel) _then;

/// Create a copy of DailyWeatherModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? timeDaily = null,Object? weatherCodesDaily = null,Object? maxTemps = null,Object? minTemps = null,Object? sunriseList = null,Object? sunsetList = null,}) {
  return _then(_self.copyWith(
timeDaily: null == timeDaily ? _self.timeDaily : timeDaily // ignore: cast_nullable_to_non_nullable
as List<String>,weatherCodesDaily: null == weatherCodesDaily ? _self.weatherCodesDaily : weatherCodesDaily // ignore: cast_nullable_to_non_nullable
as List<int>,maxTemps: null == maxTemps ? _self.maxTemps : maxTemps // ignore: cast_nullable_to_non_nullable
as List<double>,minTemps: null == minTemps ? _self.minTemps : minTemps // ignore: cast_nullable_to_non_nullable
as List<double>,sunriseList: null == sunriseList ? _self.sunriseList : sunriseList // ignore: cast_nullable_to_non_nullable
as List<String>,sunsetList: null == sunsetList ? _self.sunsetList : sunsetList // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _DailyWeatherModel extends DailyWeatherModel {
  const _DailyWeatherModel({@JsonKey(name: 'time') required final  List<String> timeDaily, @JsonKey(name: 'weathercode') required final  List<int> weatherCodesDaily, @JsonKey(name: 'temperature_2m_max') required final  List<double> maxTemps, @JsonKey(name: 'temperature_2m_min') required final  List<double> minTemps, @JsonKey(name: 'sunrise') required final  List<String> sunriseList, @JsonKey(name: 'sunset') required final  List<String> sunsetList}): _timeDaily = timeDaily,_weatherCodesDaily = weatherCodesDaily,_maxTemps = maxTemps,_minTemps = minTemps,_sunriseList = sunriseList,_sunsetList = sunsetList,super._();
  factory _DailyWeatherModel.fromJson(Map<String, dynamic> json) => _$DailyWeatherModelFromJson(json);

 final  List<String> _timeDaily;
@override@JsonKey(name: 'time') List<String> get timeDaily {
  if (_timeDaily is EqualUnmodifiableListView) return _timeDaily;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_timeDaily);
}

 final  List<int> _weatherCodesDaily;
@override@JsonKey(name: 'weathercode') List<int> get weatherCodesDaily {
  if (_weatherCodesDaily is EqualUnmodifiableListView) return _weatherCodesDaily;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_weatherCodesDaily);
}

 final  List<double> _maxTemps;
@override@JsonKey(name: 'temperature_2m_max') List<double> get maxTemps {
  if (_maxTemps is EqualUnmodifiableListView) return _maxTemps;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_maxTemps);
}

 final  List<double> _minTemps;
@override@JsonKey(name: 'temperature_2m_min') List<double> get minTemps {
  if (_minTemps is EqualUnmodifiableListView) return _minTemps;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_minTemps);
}

 final  List<String> _sunriseList;
@override@JsonKey(name: 'sunrise') List<String> get sunriseList {
  if (_sunriseList is EqualUnmodifiableListView) return _sunriseList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sunriseList);
}

 final  List<String> _sunsetList;
@override@JsonKey(name: 'sunset') List<String> get sunsetList {
  if (_sunsetList is EqualUnmodifiableListView) return _sunsetList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_sunsetList);
}


/// Create a copy of DailyWeatherModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DailyWeatherModelCopyWith<_DailyWeatherModel> get copyWith => __$DailyWeatherModelCopyWithImpl<_DailyWeatherModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DailyWeatherModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DailyWeatherModel&&const DeepCollectionEquality().equals(other._timeDaily, _timeDaily)&&const DeepCollectionEquality().equals(other._weatherCodesDaily, _weatherCodesDaily)&&const DeepCollectionEquality().equals(other._maxTemps, _maxTemps)&&const DeepCollectionEquality().equals(other._minTemps, _minTemps)&&const DeepCollectionEquality().equals(other._sunriseList, _sunriseList)&&const DeepCollectionEquality().equals(other._sunsetList, _sunsetList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_timeDaily),const DeepCollectionEquality().hash(_weatherCodesDaily),const DeepCollectionEquality().hash(_maxTemps),const DeepCollectionEquality().hash(_minTemps),const DeepCollectionEquality().hash(_sunriseList),const DeepCollectionEquality().hash(_sunsetList));

@override
String toString() {
  return 'DailyWeatherModel(timeDaily: $timeDaily, weatherCodesDaily: $weatherCodesDaily, maxTemps: $maxTemps, minTemps: $minTemps, sunriseList: $sunriseList, sunsetList: $sunsetList)';
}


}

/// @nodoc
abstract mixin class _$DailyWeatherModelCopyWith<$Res> implements $DailyWeatherModelCopyWith<$Res> {
  factory _$DailyWeatherModelCopyWith(_DailyWeatherModel value, $Res Function(_DailyWeatherModel) _then) = __$DailyWeatherModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'time') List<String> timeDaily,@JsonKey(name: 'weathercode') List<int> weatherCodesDaily,@JsonKey(name: 'temperature_2m_max') List<double> maxTemps,@JsonKey(name: 'temperature_2m_min') List<double> minTemps,@JsonKey(name: 'sunrise') List<String> sunriseList,@JsonKey(name: 'sunset') List<String> sunsetList
});




}
/// @nodoc
class __$DailyWeatherModelCopyWithImpl<$Res>
    implements _$DailyWeatherModelCopyWith<$Res> {
  __$DailyWeatherModelCopyWithImpl(this._self, this._then);

  final _DailyWeatherModel _self;
  final $Res Function(_DailyWeatherModel) _then;

/// Create a copy of DailyWeatherModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? timeDaily = null,Object? weatherCodesDaily = null,Object? maxTemps = null,Object? minTemps = null,Object? sunriseList = null,Object? sunsetList = null,}) {
  return _then(_DailyWeatherModel(
timeDaily: null == timeDaily ? _self._timeDaily : timeDaily // ignore: cast_nullable_to_non_nullable
as List<String>,weatherCodesDaily: null == weatherCodesDaily ? _self._weatherCodesDaily : weatherCodesDaily // ignore: cast_nullable_to_non_nullable
as List<int>,maxTemps: null == maxTemps ? _self._maxTemps : maxTemps // ignore: cast_nullable_to_non_nullable
as List<double>,minTemps: null == minTemps ? _self._minTemps : minTemps // ignore: cast_nullable_to_non_nullable
as List<double>,sunriseList: null == sunriseList ? _self._sunriseList : sunriseList // ignore: cast_nullable_to_non_nullable
as List<String>,sunsetList: null == sunsetList ? _self._sunsetList : sunsetList // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
