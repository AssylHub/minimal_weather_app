import 'package:dartz/dartz.dart';
import 'package:weather_app2/core/errors/failure.dart';
import 'package:weather_app2/features/weather/domain/entities/weather_entity.dart';

abstract class WeatherRepo {
  Future<Either<Failure, WeatherEntity>> getWeatherByCord(
    double lat,
    double lon,
    String cityName,
    String district,
  );
}
