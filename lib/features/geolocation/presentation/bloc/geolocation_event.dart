part of 'geolocation_bloc.dart';

sealed class GeolocationEvent extends Equatable {
  const GeolocationEvent();

  @override
  List<Object> get props => [];
}

class GetCurrentLocationEvent extends GeolocationEvent {}

class GetLocationByCityEvent extends GeolocationEvent {
  final String cityName;

  const GetLocationByCityEvent(this.cityName);

  @override
  List<Object> get props => [cityName];
}
