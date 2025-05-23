import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app2/src/features/geolocation/domain/entities/geolocation_entity.dart';

part 'geolocation.freezed.dart';
part 'geolocation.g.dart';

@freezed
abstract class Geolocation with _$Geolocation {
  const Geolocation._();
  const factory Geolocation({
    required String city,
    required String district,
    required double latitude,
    required double longitude,
  }) = _Geolocation;

  factory Geolocation.fromJson(Map<String, dynamic> json) =>
      _$GeolocationFromJson(json);
  GeolocationEntity toEntity() {
    return GeolocationEntity(
      city: city,
      district: district,
      latitude: latitude,
      longitude: longitude,
    );
  }
}

// import 'dart:convert';

// import 'package:equatable/equatable.dart';
// import 'package:weather_app2/src/features/geolocation/domain/entities/geolocation_entity.dart';

// class Geolocation extends Equatable {
//   final double latitude;
//   final double longitude;
//   final String city;
//   final String district;

//   const Geolocation({
//     required this.latitude,
//     required this.longitude,
//     required this.city,
//     required this.district,
//   });

//   @override
//   List<Object> get props => [latitude, longitude, city, district];

//   Geolocation copyWith({
//     double? latitude,
//     double? longitude,
//     String? city,
//     String? district,
//   }) {
//     return Geolocation(
//       latitude: latitude ?? this.latitude,
//       longitude: longitude ?? this.longitude,
//       city: city ?? this.city,
//       district: district ?? this.district,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'latitude': latitude,
//       'longitude': longitude,
//       'city': city,
//       'district': district,
//     };
//   }

//   factory Geolocation.fromMap(Map<String, dynamic> map) {
//     return Geolocation(
//       latitude: map['latitude'] as double,
//       longitude: map['longitude'] as double,
//       city: map['city'] as String,
//       district: map['district'] as String,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Geolocation.fromJson(String source) =>
//       Geolocation.fromMap(json.decode(source) as Map<String, dynamic>);

//   GeolocationEntity toEntity() => GeolocationEntity(
//     latitude: latitude,
//     longitude: longitude,
//     city: city,
//     district: district,
//   );

//   factory Geolocation.fromEntity(GeolocationEntity geolocationEntity) =>
//       Geolocation(
//         latitude: geolocationEntity.latitude,
//         longitude: geolocationEntity.longitude,
//         city: geolocationEntity.city,
//         district: geolocationEntity.district,
//       );

//   @override
//   bool get stringify => true;
// }
