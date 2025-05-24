import 'package:weather_app2/src/features/geolocation/data/models/geolocation.dart';

abstract class IGeolocationLocal {
  Future<void> cacheGeolocation(Geolocation geolocation);
  Future<Geolocation?> getCachedGeolocation();
  Future<void> clearCache();
}
