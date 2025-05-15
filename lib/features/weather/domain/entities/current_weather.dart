class CurrentWeather {
  final String time;
  final double temperature;
  final double feelsLike;
  final int weatherCode;
  final String description;
  final double minTemp;
  final double maxTemp;
  final String sunrise;
  final String sunset;
  final String formattedDate;
  final String formattedSunrise;
  final String formattedSunset;
  final double dewPoint;
  final double feelsLikeTemp;
  final int visibility;
  final int windDirection;
  final double windSpeed;
  final double windGust;
  final double evapotranspiration;
  final double precipitation;
  final double rain;
  final int precipitationProbability;
  final int humidity;
  final int cloudCover;
  final double surfacePressure;
  final double uvIndex;
  final double radiation;

  CurrentWeather({
    required this.time,
    required this.temperature,
    required this.feelsLike,
    required this.weatherCode,
    required this.description,
    required this.minTemp,
    required this.maxTemp,
    required this.sunrise,
    required this.sunset,
    required this.formattedDate,
    required this.formattedSunrise,
    required this.formattedSunset,
    required this.dewPoint,
    required this.feelsLikeTemp,
    required this.visibility,
    required this.windDirection,
    required this.windSpeed,
    required this.windGust,
    required this.evapotranspiration,
    required this.precipitation,
    required this.rain,
    required this.precipitationProbability,
    required this.humidity,
    required this.cloudCover,
    required this.surfacePressure,
    required this.uvIndex,
    required this.radiation,
  });
}
