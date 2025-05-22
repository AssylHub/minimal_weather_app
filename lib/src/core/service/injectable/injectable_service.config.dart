// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:weather_app2/src/core/api/dio/dio_provider.dart' as _i16;
import 'package:weather_app2/src/features/geolocation/data/datasources/geolocation_data_source.dart'
    as _i8;
import 'package:weather_app2/src/features/geolocation/data/datasources/geolocation_data_source_impl.dart'
    as _i975;
import 'package:weather_app2/src/features/geolocation/data/repo/geolocation_repo_impl.dart'
    as _i371;
import 'package:weather_app2/src/features/geolocation/domain/repo/geolocation_repo.dart'
    as _i106;
import 'package:weather_app2/src/features/geolocation/domain/usecases/get_current_location.dart'
    as _i238;
import 'package:weather_app2/src/features/geolocation/domain/usecases/get_location_by_city.dart'
    as _i228;
import 'package:weather_app2/src/features/geolocation/presentation/bloc/geolocation_bloc.dart'
    as _i902;
import 'package:weather_app2/src/features/weather/data/datasources/weather_remote_datasource.dart'
    as _i166;
import 'package:weather_app2/src/features/weather/data/datasources/weather_remote_datasource_impl.dart'
    as _i483;
import 'package:weather_app2/src/features/weather/data/repositories/weather_repo_impl.dart'
    as _i616;
import 'package:weather_app2/src/features/weather/data/services/weather_service.dart'
    as _i693;
import 'package:weather_app2/src/features/weather/domain/repositories/weather_repo.dart'
    as _i610;
import 'package:weather_app2/src/features/weather/domain/usecases/get_current_weather.dart'
    as _i622;
import 'package:weather_app2/src/features/weather/domain/usecases/get_weather_by_cord.dart'
    as _i999;
import 'package:weather_app2/src/features/weather/presentation/bloc/weather_bloc.dart'
    as _i213;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final dioProvider = _$DioProvider();
    gh.factory<_i693.WeatherService>(() => _i693.WeatherService());
    gh.lazySingleton<_i361.Dio>(() => dioProvider.dio);
    gh.lazySingleton<_i166.WeatherRemoteDatasource>(
      () => _i483.WeatherRemoteDatasourceImpl(
        apiKey: gh<String>(),
        dio: gh<_i361.Dio>(),
      ),
    );
    gh.lazySingleton<_i610.WeatherRepo>(
      () => _i616.WeatherRepoImpl(gh<_i166.WeatherRemoteDatasource>()),
    );
    gh.factory<_i622.GetCurrentWeather>(
      () => _i622.GetCurrentWeather(weatherService: gh<_i693.WeatherService>()),
    );
    gh.lazySingleton<_i8.GeolocationDataSource>(
      () => _i975.GeolocationDataSourceImpl(dio: gh<_i361.Dio>()),
    );
    gh.factory<_i999.GetWeatherByCord>(
      () => _i999.GetWeatherByCord(gh<_i610.WeatherRepo>()),
    );
    gh.factory<_i213.WeatherBloc>(
      () => _i213.WeatherBloc(
        getWeatherByCord: gh<_i999.GetWeatherByCord>(),
        getCurrentWeather: gh<_i622.GetCurrentWeather>(),
      ),
    );
    gh.lazySingleton<_i106.GeolocationRepo>(
      () => _i371.GeolocationRepoImpl(
        geolocationDataSource: gh<_i8.GeolocationDataSource>(),
      ),
    );
    gh.factory<_i238.GetCurrentLocation>(
      () => _i238.GetCurrentLocation(gh<_i106.GeolocationRepo>()),
    );
    gh.factory<_i228.GetLocationByCity>(
      () => _i228.GetLocationByCity(gh<_i106.GeolocationRepo>()),
    );
    gh.factory<_i902.GeolocationBloc>(
      () => _i902.GeolocationBloc(
        getCurrentLocation: gh<_i238.GetCurrentLocation>(),
        getLocationByCity: gh<_i228.GetLocationByCity>(),
      ),
    );
    return this;
  }
}

class _$DioProvider extends _i16.DioProvider {}
