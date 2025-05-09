part of 'geolocation_bloc.dart';

sealed class GeolocationState extends Equatable {
  const GeolocationState();

  @override
  List<Object> get props => [];
}

final class GeolocationInitial extends GeolocationState {}

final class GeolocationLoading extends GeolocationState {}

final class GeolocationLoaded extends GeolocationState {
  final GeolocationEntity location;

  const GeolocationLoaded(this.location);

  @override
  List<Object> get props => [location];
}

final class GeolocationError extends GeolocationState {
  final String message;

  const GeolocationError(this.message);

  @override
  List<Object> get props => [message];
}
