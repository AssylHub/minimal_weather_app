import 'package:weather_app2/features/weather/data/models/weather_model.dart';

abstract class WeatherRemoteDatasource {
  Future<Weather> getWeatherByCord(double lat, double lon, String cityName, String district,);
}
