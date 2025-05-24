import 'package:weather_app2/src/features/geolocation/data/models/geolocation.dart';

abstract class GeolocationLocalDatasource {
  Future<void> cacheGeolocation(Geolocation geolocation);
  Future<Geolocation?> getCachedGeolocation();
  Future<void> clearCache();
}