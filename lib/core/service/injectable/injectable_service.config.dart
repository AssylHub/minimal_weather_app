// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:http/http.dart' as _i519;
import 'package:injectable/injectable.dart' as _i526;
import 'package:weather_app2/features/geolocation/data/datasources/geolocation_data_source.dart'
    as _i240;
import 'package:weather_app2/features/geolocation/data/datasources/geolocation_data_source_impl.dart'
    as _i964;
import 'package:weather_app2/features/geolocation/data/repo/geolocation_repo_impl.dart'
    as _i350;
import 'package:weather_app2/features/geolocation/domain/repo/geolocation_repo.dart'
    as _i1029;
import 'package:weather_app2/features/geolocation/domain/usecases/get_current_location.dart'
    as _i174;
import 'package:weather_app2/features/geolocation/domain/usecases/get_location_by_city.dart'
    as _i633;
import 'package:weather_app2/features/geolocation/presentation/bloc/geolocation_bloc.dart'
    as _i296;
import 'package:weather_app2/features/weather/data/datasources/weather_remote_datasource.dart'
    as _i881;
import 'package:weather_app2/features/weather/data/datasources/weather_remote_datasource_impl.dart'
    as _i406;
import 'package:weather_app2/features/weather/data/repositories/weather_repo_impl.dart'
    as _i928;
import 'package:weather_app2/features/weather/data/services/weather_service.dart'
    as _i105;
import 'package:weather_app2/features/weather/domain/repositories/weather_repo.dart'
    as _i321;
import 'package:weather_app2/features/weather/domain/usecases/get_current_weather.dart'
    as _i1046;
import 'package:weather_app2/features/weather/domain/usecases/get_weather_by_cord.dart'
    as _i775;
import 'package:weather_app2/features/weather/presentation/bloc/weather_bloc.dart';

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i105.WeatherService>(() => _i105.WeatherService());
    gh.lazySingleton<_i881.WeatherRemoteDatasource>(
      () => _i406.WeatherRemoteDatasourceImpl(
        client: gh<_i519.Client>(),
        apiKey: gh<String>(),
      ),
    );
    gh.lazySingleton<_i240.GeolocationDataSource>(
      () => _i964.GeolocationDataSourceImpl(client: gh<_i519.Client>()),
    );
    gh.factory<_i1046.GetCurrentWeather>(
      () =>
          _i1046.GetCurrentWeather(weatherService: gh<_i105.WeatherService>()),
    );
    gh.lazySingleton<_i1029.GeolocationRepo>(
      () => _i350.GeolocationRepoImpl(
        geolocationDataSource: gh<_i240.GeolocationDataSource>(),
      ),
    );
    gh.factory<_i174.GetCurrentLocation>(
      () => _i174.GetCurrentLocation(gh<_i1029.GeolocationRepo>()),
    );
    gh.factory<_i633.GetLocationByCity>(
      () => _i633.GetLocationByCity(gh<_i1029.GeolocationRepo>()),
    );
    gh.lazySingleton<_i321.WeatherRepo>(
      () => _i928.WeatherRepoImpl(gh<_i881.WeatherRemoteDatasource>()),
    );
    gh.factory<_i296.GeolocationBloc>(
      () => _i296.GeolocationBloc(
        getCurrentLocation: gh<_i174.GetCurrentLocation>(),
        getLocationByCity: gh<_i633.GetLocationByCity>(),
      ),
    );
    gh.factory<_i775.GetWeatherByCord>(
      () => _i775.GetWeatherByCord(gh<_i321.WeatherRepo>()),
    );
    gh.factory<WeatherBloc>(
      () => WeatherBloc(
        getWeatherByCord: gh<_i775.GetWeatherByCord>(),
        getCurrentWeather: gh<_i1046.GetCurrentWeather>(),
      ),
    );
    return this;
  }
}
