import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app2/src/core/errors/failure.dart';
import 'package:weather_app2/src/features/geolocation/data/datasources/geolocation_data_source.dart';
import 'package:weather_app2/src/features/geolocation/data/models/geolocation.dart';
import 'package:weather_app2/src/features/geolocation/domain/entities/geolocation_entity.dart';
import 'package:weather_app2/src/features/geolocation/domain/repo/geolocation_repo.dart';

@LazySingleton(as: GeolocationRepo)
class GeolocationRepoImpl implements GeolocationRepo {
  final GeolocationDataSource geolocationDataSource;

  GeolocationRepoImpl({required this.geolocationDataSource});

  @override
  Future<Either<Failure, GeolocationEntity>> getCurrentLocation() async {
    try {
      final geolocation = await geolocationDataSource.getCurrentLocation();

      return Right(geolocation.toEntity());
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, GeolocationEntity>> getLocationByCity(
    String cityName,
  ) async {
    try {
      final geolocation = await geolocationDataSource.getLocationByCity(
        cityName,
      );

      return Right(geolocation.toEntity());
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
