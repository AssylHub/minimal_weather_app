import 'package:dio/dio.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app2/src/core/utils/location_helper.dart';
import 'package:weather_app2/src/features/geolocation/data/datasources/geolocation_data_source.dart';
import 'package:weather_app2/src/features/geolocation/data/models/geolocation.dart';

@LazySingleton(as: GeolocationDataSource)
class GeolocationDataSourceImpl implements GeolocationDataSource {
  final Dio dio;

  GeolocationDataSourceImpl({required this.dio});
  @override
  Future<Geolocation> getCurrentLocation() async {
    await PermissionsUtil.ensureLocationPermission();

    final position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );

    final placemarks = await placemarkFromCoordinates(
      position.latitude,
      position.longitude,
    );

    final Placemark place = placemarks.first;

    return Geolocation(
      latitude: position.latitude,
      longitude: position.longitude,
      city: place.locality ?? "Unknown City",
      district: place.subAdministrativeArea ?? "Unknown District",
    );
  }

  @override
  Future<Geolocation> getLocationByCity(String cityName) async {
    final url =
        "https://geocoding-api.open-meteo.com/v1/search?name=$cityName&count=5&language=en&format=json";

    try {
      final response = await dio.get(url);

      final data = response.data;

      final List<dynamic> results = data['results'] ?? [];

      if (results.isEmpty) {
        throw Exception("No result found");
      }

      final firstResult = results[0];

      return Geolocation(
        latitude: firstResult["latitude"],
        longitude: firstResult["longitude"],
        city: cityName,
        district: firstResult['admin1'] ?? 'Unknown District',
      );
    } catch (e) {
      throw Exception("Failed to fetch location for city: $e");
    }
  }
}
