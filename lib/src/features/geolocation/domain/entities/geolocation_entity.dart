import 'package:equatable/equatable.dart';

class GeolocationEntity extends Equatable {
  final double latitude;
  final double longitude;
  final String city;
  final String district;

  const GeolocationEntity({
    required this.latitude,
    required this.longitude,
    required this.city,
    required this.district,
  });

  @override
  List<Object?> get props => [latitude, longitude, city, district];
}
