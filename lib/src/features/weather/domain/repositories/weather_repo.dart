import 'package:dartz/dartz.dart';
import 'package:weather_app2/src/core/errors/failure.dart';
import 'package:weather_app2/src/features/weather/domain/entities/weather_entity.dart';

abstract class WeatherRepo {
  Future<Either<Failure, WeatherEntity>> getWeatherByCord(
    double lat,
    double lon,
    String cityName,
    String district,
  );
}
