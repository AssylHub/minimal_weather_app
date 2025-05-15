import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:weather_app2/app/router.dart';
import 'package:weather_app2/core/di/injector.dart';
import 'package:weather_app2/features/geolocation/presentation/bloc/geolocation_bloc.dart';
import 'package:weather_app2/features/weather/presentation/bloc/weather_bloc.dart';

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
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: appRouter);
  }
}
