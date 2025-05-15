import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app2/core/constants/app_constants.dart';
import 'package:weather_app2/features/weather/data/datasources/weather_remote_datasource.dart';
import 'package:weather_app2/features/weather/data/datasources/weather_remote_datasource_impl.dart';
import 'package:weather_app2/features/weather/data/repositories/weather_repo_impl.dart';
import 'package:weather_app2/features/weather/data/services/weather_service.dart';
import 'package:weather_app2/features/weather/domain/repositories/weather_repo.dart';
import 'package:weather_app2/features/weather/domain/usecases/get_current_weather.dart';
import 'package:weather_app2/features/weather/domain/usecases/get_weather_by_cord.dart';
import 'package:weather_app2/features/weather/presentation/bloc/weather_bloc.dart';

final sl = GetIt.instance;

Future<void> initWeather() async {
  // services
  sl.registerLazySingleton<WeatherService>(() => WeatherService());

  // Datasource
  sl.registerLazySingleton<WeatherRemoteDatasource>(
    () => WeatherRemoteDatasourceImpl(
      client: http.Client(),
      apiKey: AppConstants.apiKey,
    ),
  );

  // repo
  sl.registerLazySingleton<WeatherRepo>(() => WeatherRepoImpl(sl()));

  // usecases
  sl.registerLazySingleton(() => GetWeatherByCord(sl()));
  sl.registerLazySingleton(() => GetCurrentWeather(weatherService: sl()));

  // Bloc
  sl.registerFactory(
    () => WeatherBloc(getWeatherByCord: sl(), getCurrentWeather: sl()),
  );
}
