part of 'weather_bloc.dart';

sealed class WeatherEvent extends Equatable {
  const WeatherEvent();

  @override
  List<Object> get props => [];
}

class FetchWeatherByCordEvent extends WeatherEvent {
  final double latitude;
  final double longitude;

  const FetchWeatherByCordEvent(this.latitude, this.longitude);

  @override
  List<Object> get props => [latitude, longitude];
}
