import 'package:dartz/dartz.dart';
import 'package:weather_app2/src/core/errors/failure.dart';
import 'package:weather_app2/src/features/geolocation/domain/entities/geolocation_entity.dart';

abstract interface class GeolocationRepo {
  Future<Either<Failure, GeolocationEntity>> getLocationByCity(String cityName);
  Future<Either<Failure, GeolocationEntity>> getCurrentLocation();
}
