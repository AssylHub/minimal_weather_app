import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app2/src/core/errors/failure.dart';
import 'package:weather_app2/src/features/weather/domain/entities/weather_entity.dart';
import 'package:weather_app2/src/features/weather/domain/repositories/weather_repo.dart';

@injectable
class GetWeatherByCord {
  final WeatherRepo repo;

  GetWeatherByCord(this.repo);

  Future<Either<Failure, WeatherEntity>> call(
    double lat,
    double lon,
    String cityName,
    String district,
  ) {
    return repo.getWeatherByCord(lat, lon, cityName, district);
  }
}
