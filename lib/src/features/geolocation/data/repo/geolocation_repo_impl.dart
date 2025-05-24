import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app2/src/core/errors/failure.dart';
import 'package:weather_app2/src/features/geolocation/data/datasources/i_geolocation_local.dart';
import 'package:weather_app2/src/features/geolocation/data/datasources/i_geolocation_remote.dart';
import 'package:weather_app2/src/features/geolocation/data/models/geolocation.dart';
import 'package:weather_app2/src/features/geolocation/domain/entities/geolocation_entity.dart';
import 'package:weather_app2/src/features/geolocation/domain/repo/geolocation_repo.dart';

@LazySingleton(as: GeolocationRepo)
class GeolocationRepoImpl implements GeolocationRepo {
  final GeolocationDataSource geolocationDataSource;
  final GeolocationLocalDatasource geolocationLocalDatasource;

  GeolocationRepoImpl({
    required this.geolocationDataSource,
    required this.geolocationLocalDatasource,
  });

  @override
  Future<Either<Failure, GeolocationEntity>> getCurrentLocation() async {
    try {
      final geolocation = await geolocationDataSource.getCurrentLocation();
      // Cache the geolocation locally
      await geolocationLocalDatasource.cacheGeolocation(geolocation);
      return Right(geolocation.toEntity());
    } catch (e) {
      // Try to get cached geolocation
      final cached = await geolocationLocalDatasource.getCachedGeolocation();
      if (cached != null) {
        return Right(cached.toEntity());
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, GeolocationEntity>> getLocationByCity(
    String cityName,
  ) async {
    try {
      final geolocation = await geolocationDataSource.getLocationByCity(cityName);
      // Cache the geolocation locally
      await geolocationLocalDatasource.cacheGeolocation(geolocation);
      return Right(geolocation.toEntity());
    } catch (e) {
      // Try to get cached geolocation
      final cached = await geolocationLocalDatasource.getCachedGeolocation();
      if (cached != null) {
        return Right(cached.toEntity());
      }
      return Left(ServerFailure(e.toString()));
    }
  }
}