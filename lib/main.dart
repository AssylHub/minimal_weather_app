import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app2/src/core/localization/generated/l10n.dart';
import 'package:weather_app2/src/core/router/router.dart';
import 'package:weather_app2/src/features/geolocation/presentation/bloc/geolocation_bloc.dart';
import 'package:weather_app2/src/features/weather/presentation/bloc/weather_bloc.dart';
import 'src/core/service/injectable/injectable_service.dart';

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
    return MaterialApp.router(
      routerConfig: _router,
      locale: Locale("ru"),
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
    );
  }
}
