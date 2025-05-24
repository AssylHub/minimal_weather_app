import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app2/src/core/router/router.dart';
import 'package:weather_app2/src/features/geolocation/data/datasources/geolocation_local_impl.dart';
import 'package:weather_app2/src/features/weather/data/datasources/weather_local_impl.dart';

class InitialLoader extends StatefulWidget {
  const InitialLoader({Key? key}) : super(key: key);

  @override
  State<InitialLoader> createState() => _InitialLoaderState();
}

class _InitialLoaderState extends State<InitialLoader> {
  @override
  void initState() {
    super.initState();
    _checkCacheAndRedirect();
  }

  Future<void> _checkCacheAndRedirect() async {
    final weatherLocalDatasource = WeatherLocalImpl();
    final geolocationLocalDatasource = GeolocationLocalImpl();

    final cachedWeather = await weatherLocalDatasource.getCachedWeather();
    final cachedGeolocation =
        await geolocationLocalDatasource.getCachedGeolocation();

    if (!mounted) return;

    if (cachedWeather != null && cachedGeolocation != null) {
      context.goNamed(RouteNames.home, extra: cachedGeolocation.toEntity());
    } else {
      context.goNamed(RouteNames.geolocation);
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: CircularProgressIndicator()));
  }
}
