import 'package:flutter/material.dart';
import 'package:weather_app2/features/geolocation/data/datasources/geolocation_data_source_impl.dart';
import 'package:weather_app2/features/geolocation/di/geolocation_di.dart';
import 'package:weather_app2/features/geolocation/presentation/screens/select_geolocation.dart';
import 'package:weather_app2/features/home/presentation/screens/home_screen.dart';

void main() async {
  // final geolocationDataSource = GeolocationDataSourceImpl();
  WidgetsFlutterBinding.ensureInitialized();
  init();
  // Test with a known city
  // final city = 'Biskek';
  // try {
  //   final location = await geolocationDataSource.getCurrentLocation();
  //   print('City: ${location.city}');
  //   print('Latitude: ${location.latitude}');
  //   print('Longitude: ${location.longitude}');
  //   print('District: ${location.district}');
  // } catch (e) {
  //   print('Error: $e');
  // }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}
