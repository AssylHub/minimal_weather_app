import 'dart:convert';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather_app2/src/features/geolocation/data/models/geolocation.dart';
import 'i_geolocation_local.dart';

@LazySingleton(as: IGeolocationLocal)
class GeolocationLocalImpl implements IGeolocationLocal {
  static const _cacheKey = 'CACHED_GEOLOCATION';

  @override
  Future<void> cacheGeolocation(Geolocation geolocation) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_cacheKey, jsonEncode(geolocation.toJson()));
  }

  @override
  Future<Geolocation?> getCachedGeolocation() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = prefs.getString(_cacheKey);
    if (jsonString != null) {
      return Geolocation.fromJson(jsonDecode(jsonString));
    }
    return null;
  }

  @override
  Future<void> clearCache() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_cacheKey);
  }
}
