import 'package:get_it/get_it.dart';

import 'package:http/http.dart' as http;
import 'package:weather_app2/features/geolocation/data/datasources/geolocation_data_source.dart';
import 'package:weather_app2/features/geolocation/data/datasources/geolocation_data_source_impl.dart';
import 'package:weather_app2/features/geolocation/data/repo/geolocation_repo_impl.dart';
import 'package:weather_app2/features/geolocation/domain/repo/geolocation_repo.dart';
import 'package:weather_app2/features/geolocation/domain/usecases/get_current_location.dart';
import 'package:weather_app2/features/geolocation/domain/usecases/get_location_by_city.dart';
import 'package:weather_app2/features/geolocation/presentation/bloc/geolocation_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // External
  sl.registerLazySingleton(() => http.Client());

  // Datasources
  sl.registerLazySingleton<GeolocationDataSource>(
    () => GeolocationDataSourceImpl(client: http.Client()),
  );

  // Repo
  sl.registerLazySingleton<GeolocationRepo>(
    () => GeolocationRepoImpl(geolocationDataSource: sl()),
  );

  // Usecases
  sl.registerLazySingleton(() => GetLocationByCity(sl()));
  sl.registerLazySingleton(() => GetCurrentLocation(sl()));

  // Bloc
  sl.registerFactory(
    () => GeolocationBloc(getCurrentLocation: sl(), getLocationByCity: sl()),
  );
}
