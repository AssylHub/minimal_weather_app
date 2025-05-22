import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app2/src/core/errors/failure.dart';
import 'package:weather_app2/src/core/utils/loggers/log.dart';
import 'package:weather_app2/src/features/weather/data/datasources/weather_remote_datasource.dart';
import 'package:weather_app2/src/features/weather/domain/entities/weather_entity.dart';
import 'package:weather_app2/src/features/weather/domain/repositories/weather_repo.dart';

@LazySingleton(as: WeatherRepo)
class WeatherRepoImpl implements WeatherRepo {
  final WeatherRemoteDatasource remoteDatasource;

  WeatherRepoImpl(this.remoteDatasource);

  @override
  Future<Either<Failure, WeatherEntity>> getWeatherByCord(
    double lat,
    double lon,
    String cityName,
    String district,
  ) async {
    try {
      Log.info(
        'Fetching weather',
        'lat: $lat, lon: $lon, city: $cityName, district: $district',
      );
      final weather = await remoteDatasource.getWeatherByCord(
        lat,
        lon,
        cityName,
        district,
      );

      Log.info('Weather fetched', weather);

      return Right(weather.toEntity());
    } catch (e) {
      Log.error('Weather fetch failed', e);
      return Left(ServerFailure(e.toString()));
    }
  }
}
