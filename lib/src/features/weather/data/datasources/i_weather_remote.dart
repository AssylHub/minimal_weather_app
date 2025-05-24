import 'package:weather_app2/src/features/weather/data/models/weather_model/weather_model.dart';

abstract interface class IWeatherRemote {
  Future<WeatherModel> getWeatherByCord(
    double lat,
    double lon,
    String cityName,
    String district,
  );
}
