import 'package:dartz/dartz.dart';
import 'package:weather_app2/core/errors/failure.dart';
import 'package:weather_app2/features/geolocation/domain/entities/geolocation_entity.dart';

abstract class GeolocationRepo {
  Future<Either<Failure, GeolocationEntity>> getLocationByCity(String cityName);
  Future<Either<Failure, GeolocationEntity>> getCurrentLocation();
}
