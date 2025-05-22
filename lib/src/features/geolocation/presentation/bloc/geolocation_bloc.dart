import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app2/src/core/errors/failure.dart';
import 'package:weather_app2/src/features/geolocation/domain/entities/geolocation_entity.dart';
import 'package:weather_app2/src/features/geolocation/domain/usecases/get_current_location.dart';
import 'package:weather_app2/src/features/geolocation/domain/usecases/get_location_by_city.dart';
import 'package:weather_app2/src/core/usecases/usecase.dart';

part 'geolocation_event.dart';
part 'geolocation_state.dart';

@injectable
class GeolocationBloc extends Bloc<GeolocationEvent, GeolocationState> {
  final GetCurrentLocation getCurrentLocation;
  final GetLocationByCity getLocationByCity;

  GeolocationBloc({
    required this.getCurrentLocation,
    required this.getLocationByCity,
  }) : super(GeolocationInitial()) {
    on<GeolocationEvent>((event, emit) {});
    on<GetCurrentLocationEvent>(_onGetCurrentLocation);
    on<GetLocationByCityEvent>(_onGetLocationByCity);
  }

  Future<void> _onGetCurrentLocation(
    GetCurrentLocationEvent event,
    Emitter<GeolocationState> emit,
  ) async {
    emit(GeolocationLoading());

    final result = await getCurrentLocation(NoParams());

    result.fold(
      (failure) => emit(GeolocationError(_mapFailureToMessage(failure))),
      (location) => emit(GeolocationLoaded(location)),
    );
  }

  Future<void> _onGetLocationByCity(
    GetLocationByCityEvent event,
    Emitter<GeolocationState> emit,
  ) async {
    emit(GeolocationLoading());

    final result = await getLocationByCity(event.cityName);

    result.fold(
      (failure) => emit(GeolocationError(_mapFailureToMessage(failure))),
      (location) => emit(GeolocationLoaded(location)),
    );
  }

  String _mapFailureToMessage(Failure failure) {
    return failure.message;
  }
}
