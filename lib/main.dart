import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app2/core/router/router.dart';
import 'package:weather_app2/features/geolocation/presentation/bloc/geolocation_bloc.dart';
import 'package:weather_app2/features/weather/presentation/bloc/weather_bloc.dart';
import 'core/service/injectable/injectable_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  await init();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (context) => GeolocationBloc(
                getCurrentLocation: sl(),
                getLocationByCity: sl(),
              ),
        ),

        BlocProvider(
          create:
              (context) =>
                  WeatherBloc(getWeatherByCord: sl(), getCurrentWeather: sl()),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GoRouter _router = routerProvider();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: _router);
  }
}
