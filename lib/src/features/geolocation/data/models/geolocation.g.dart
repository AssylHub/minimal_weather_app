// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geolocation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Geolocation _$GeolocationFromJson(Map<String, dynamic> json) => _Geolocation(
  city: json['city'] as String,
  district: json['district'] as String,
  latitude: (json['latitude'] as num).toDouble(),
  longitude: (json['longitude'] as num).toDouble(),
);

Map<String, dynamic> _$GeolocationToJson(_Geolocation instance) =>
    <String, dynamic>{
      'city': instance.city,
      'district': instance.district,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
