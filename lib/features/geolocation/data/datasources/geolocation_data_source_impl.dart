import 'dart:convert';

import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app2/core/utils/location_helper.dart';
import 'package:weather_app2/features/geolocation/data/datasources/geolocation_data_source.dart';
import 'package:weather_app2/features/geolocation/data/models/geolocation.dart';

import 'package:http/http.dart' as http;

class GeolocationDataSourceImpl implements GeolocationDataSource {
  final http.Client client;

  GeolocationDataSourceImpl({required this.client});
  @override
  Future<Geolocation> getCurrentLocation() async {
    await PermissionsUtil.ensureLocationPermission();

    // Step 1: Get position
    final position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );

    // Step 2: Reverse geocode the position to get city & district
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
    final url = Uri.parse(
      "https://nominatim.openstreetmap.org/search?q=$cityName&format=json&limit=1",
    );

    final response = await client.get(
      url,
      headers: {"User-Agent": "weather_app2"},
    );

    if (response.statusCode != 200) {
      throw Exception("Failed to fetch location for city.");
    }

    final List<dynamic> data = jsonDecode(response.body);

    if (data.isEmpty) {
      throw Exception("No result found");
    }

    final firstResult = data[0];

    return Geolocation(
      latitude: double.parse(firstResult["lat"]),
      longitude: double.parse(firstResult["lon"]),
      city: cityName,
      district: firstResult['display_name'] ?? 'Unknown District',
    );
  }
}
