part of 'weather_bloc.dart';

sealed class WeatherState extends Equatable {
  const WeatherState();

  @override
  List<Object> get props => [];
}

final class WeatherInitial extends WeatherState {}

final class WeatherLoading extends WeatherState {}

final class WeatherLoaded extends WeatherState {
  final WeatherEntity weatherData;
  final CurrentWeather currentWeather;

  const WeatherLoaded(this.weatherData, this.currentWeather);

  @override
  List<Object> get props => [weatherData, currentWeather];
}

final class WeatherError extends WeatherState {
  final String message;

  const WeatherError(this.message);

  @override
  List<Object> get props => [message];
}
