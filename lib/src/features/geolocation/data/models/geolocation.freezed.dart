// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'geolocation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Geolocation {

 String get city; String get district; double get latitude; double get longitude;
/// Create a copy of Geolocation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeolocationCopyWith<Geolocation> get copyWith => _$GeolocationCopyWithImpl<Geolocation>(this as Geolocation, _$identity);

  /// Serializes this Geolocation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Geolocation&&(identical(other.city, city) || other.city == city)&&(identical(other.district, district) || other.district == district)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,city,district,latitude,longitude);

@override
String toString() {
  return 'Geolocation(city: $city, district: $district, latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class $GeolocationCopyWith<$Res>  {
  factory $GeolocationCopyWith(Geolocation value, $Res Function(Geolocation) _then) = _$GeolocationCopyWithImpl;
@useResult
$Res call({
 String city, String district, double latitude, double longitude
});




}
/// @nodoc
class _$GeolocationCopyWithImpl<$Res>
    implements $GeolocationCopyWith<$Res> {
  _$GeolocationCopyWithImpl(this._self, this._then);

  final Geolocation _self;
  final $Res Function(Geolocation) _then;

/// Create a copy of Geolocation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? city = null,Object? district = null,Object? latitude = null,Object? longitude = null,}) {
  return _then(_self.copyWith(
city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,district: null == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Geolocation extends Geolocation {
  const _Geolocation({required this.city, required this.district, required this.latitude, required this.longitude}): super._();
  factory _Geolocation.fromJson(Map<String, dynamic> json) => _$GeolocationFromJson(json);

@override final  String city;
@override final  String district;
@override final  double latitude;
@override final  double longitude;

/// Create a copy of Geolocation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeolocationCopyWith<_Geolocation> get copyWith => __$GeolocationCopyWithImpl<_Geolocation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GeolocationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Geolocation&&(identical(other.city, city) || other.city == city)&&(identical(other.district, district) || other.district == district)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,city,district,latitude,longitude);

@override
String toString() {
  return 'Geolocation(city: $city, district: $district, latitude: $latitude, longitude: $longitude)';
}


}

/// @nodoc
abstract mixin class _$GeolocationCopyWith<$Res> implements $GeolocationCopyWith<$Res> {
  factory _$GeolocationCopyWith(_Geolocation value, $Res Function(_Geolocation) _then) = __$GeolocationCopyWithImpl;
@override @useResult
$Res call({
 String city, String district, double latitude, double longitude
});




}
/// @nodoc
class __$GeolocationCopyWithImpl<$Res>
    implements _$GeolocationCopyWith<$Res> {
  __$GeolocationCopyWithImpl(this._self, this._then);

  final _Geolocation _self;
  final $Res Function(_Geolocation) _then;

/// Create a copy of Geolocation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? city = null,Object? district = null,Object? latitude = null,Object? longitude = null,}) {
  return _then(_Geolocation(
city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,district: null == district ? _self.district : district // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
