import 'package:weather_app2/src/features/geolocation/data/models/geolocation.dart';

abstract class IGeolocationRemote {
  Future<Geolocation> getLocationByCity(String cityName);
  Future<Geolocation> getCurrentLocation();
}
