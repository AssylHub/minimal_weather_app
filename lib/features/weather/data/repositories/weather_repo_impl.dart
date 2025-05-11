import 'package:dartz/dartz.dart';
import 'package:weather_app2/core/errors/failure.dart';
import 'package:weather_app2/features/weather/data/datasources/weather_remote_datasource.dart';
import 'package:weather_app2/features/weather/data/datasources/weather_remote_datasource_impl.dart';
import 'package:weather_app2/features/weather/domain/entities/weather_entity.dart';
import 'package:weather_app2/features/weather/domain/repositories/weather_repo.dart';

class WeatherRepoImpl implements WeatherRepo {
  final WeatherRemoteDatasource remoteDatasource;

  WeatherRepoImpl(this.remoteDatasource);

  @override
  Future<Either<Failure, WeatherEntity>> getWeatherByCord(
    double lat,
    double lon,
  ) async {
    try {
      final weather = await remoteDatasource.getWeatherByCord(lat, lon);

      return Right(weather.toEntity());
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
