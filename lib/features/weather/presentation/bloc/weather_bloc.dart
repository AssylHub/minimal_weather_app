import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app2/core/errors/failure.dart';
import 'package:weather_app2/features/weather/domain/entities/current_weather.dart';
import 'package:weather_app2/features/weather/domain/entities/weather_entity.dart';
import 'package:weather_app2/features/weather/domain/usecases/get_current_weather.dart';
import 'package:weather_app2/features/weather/domain/usecases/get_weather_by_cord.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final GetWeatherByCord getWeatherByCord;
  final GetCurrentWeather getCurrentWeather;

  WeatherBloc({required this.getWeatherByCord, required this.getCurrentWeather})
    : super(WeatherInitial()) {
    on<WeatherEvent>((event, emit) {});
    on<FetchWeatherByCordEvent>(_onFetchWeatherByCord);
  }

  Future<void> _onFetchWeatherByCord(
    FetchWeatherByCordEvent event,
    Emitter<WeatherState> emit,
  ) async {
    emit(WeatherLoading());

    try {
      final result = await getWeatherByCord(
        event.latitude,
        event.longitude,
        event.cityName,
        event.district,
      );

      result.fold(
        (failure) => emit(WeatherError(_mapFailureToMessage(failure))),
        (weather) {
          final currentWeather = getCurrentWeather(weather);
          emit(WeatherLoaded(weather, currentWeather));
        },
      );
    } catch (e) {
      emit(WeatherError("Unexpected error occured. ${e.toString()}"));
    }
  }

  String _mapFailureToMessage(Failure failure) {
    return failure.message;
  }
}
