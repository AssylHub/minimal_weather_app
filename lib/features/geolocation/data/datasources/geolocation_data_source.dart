import 'package:weather_app2/features/geolocation/data/models/geolocation.dart';

abstract class GeolocationDataSource {
  Future<Geolocation> getLocationByCity(String cityName);
  Future<Geolocation> getCurrentLocation();
}
