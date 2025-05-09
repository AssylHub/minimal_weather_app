import 'package:geolocator/geolocator.dart';

class PermissionsUtil {
  static Future<void> ensureLocationPermission() async {
    LocationPermission permission = await Geolocator.checkPermission();
    print("1, $permission");

    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      print("2, $permission");

      permission = await Geolocator.requestPermission();
    }

    if (permission != LocationPermission.whileInUse &&
        permission != LocationPermission.always) {
      print("3, $permission");
      throw Exception('Location permissions are denied');
    }
  }
}
