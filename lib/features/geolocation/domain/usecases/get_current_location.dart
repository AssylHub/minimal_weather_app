import 'package:dartz/dartz.dart';
import 'package:weather_app2/core/errors/failure.dart';
import 'package:weather_app2/features/geolocation/domain/entities/geolocation_entity.dart';
import 'package:weather_app2/features/geolocation/domain/repo/geolocation_repo.dart';
import 'package:weather_app2/core/usecases/usecase.dart';

class GetCurrentLocation implements Usecase<GeolocationEntity, NoParams> {
  final GeolocationRepo geolocationRepo;

  GetCurrentLocation(this.geolocationRepo);

  @override
  Future<Either<Failure, GeolocationEntity>> call(NoParams params) async {
    return await geolocationRepo.getCurrentLocation();
  }
}
