import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app2/src/core/errors/failure.dart';
import 'package:weather_app2/src/features/geolocation/domain/entities/geolocation_entity.dart';
import 'package:weather_app2/src/features/geolocation/domain/repo/geolocation_repo.dart';
import 'package:weather_app2/src/core/usecases/usecase.dart';
@injectable
class GetCurrentLocation implements Usecase<GeolocationEntity, NoParams> {
  final GeolocationRepo geolocationRepo;

  GetCurrentLocation(this.geolocationRepo);

  @override
  Future<Either<Failure, GeolocationEntity>> call(NoParams params) async {
    return await geolocationRepo.getCurrentLocation();
  }
}
