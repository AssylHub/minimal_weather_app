import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app2/src/core/errors/failure.dart';
import 'package:weather_app2/src/features/geolocation/domain/entities/geolocation_entity.dart';
import 'package:weather_app2/src/features/geolocation/domain/repo/geolocation_repo.dart';
import 'package:weather_app2/src/core/usecases/usecase.dart';
@injectable
class GetLocationByCity implements Usecase<GeolocationEntity, String> {
  final GeolocationRepo geolocationRepo;

  GetLocationByCity(this.geolocationRepo);

  @override
  Future<Either<Failure, GeolocationEntity>> call(String cityName) async {
    return await geolocationRepo.getLocationByCity(cityName);
  }
}
