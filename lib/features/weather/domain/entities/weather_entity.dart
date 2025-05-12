class WeatherEntity {
  final String cityName;
  final double temperature;
  final String description;
  final double feelsLike;
  final double tempMin;
  final double tempMax;
  // final int humidity;
  // final double windSpeed;

  WeatherEntity({
    required this.cityName,
    required this.temperature,
    required this.description,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
    // required this.humidity,
    // required this.windSpeed,
  });
}
