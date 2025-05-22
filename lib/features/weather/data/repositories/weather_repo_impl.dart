import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app2/core/errors/failure.dart';
import 'package:weather_app2/features/weather/data/datasources/weather_remote_datasource.dart';
import 'package:weather_app2/features/weather/domain/entities/weather_entity.dart';
import 'package:weather_app2/features/weather/domain/repositories/weather_repo.dart';

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
      final weather = await remoteDatasource.getWeatherByCord(
        lat,
        lon,
        cityName,
        district,
      );

      return Right(weather.toEntity());
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
