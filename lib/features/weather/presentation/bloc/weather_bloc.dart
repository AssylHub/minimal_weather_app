import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app2/core/errors/failure.dart';
import 'package:weather_app2/features/weather/domain/entities/weather_entity.dart';
import 'package:weather_app2/features/weather/domain/usecases/get_weather_by_cord.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final GetWeatherByCord getWeatherByCord;

  WeatherBloc({required this.getWeatherByCord}) : super(WeatherInitial()) {
    on<WeatherEvent>((event, emit) {});
    on<FetchWeatherByCordEvent>((event, emit) {});
  }

  Future<void> _onFetchWeatherByCord(
    FetchWeatherByCordEvent event,
    Emitter<WeatherState> emit,
  ) async {
    emit(WeatherLoading());

    final result = await getWeatherByCord(event.latitude, event.longitude);

    result.fold(
      (failure) => emit(WeatherError(_mapFailureToMessage(failure))),
      (weather) => emit(WeatherLoaded(weather)),
    );
  }

  String _mapFailureToMessage(Failure failure) {
    return failure.message;
  }
}
