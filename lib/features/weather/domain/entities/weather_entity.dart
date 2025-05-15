class WeatherEntity {
  final List<String> timeDaily;
  final List<int> weatherCodesDaily;
  final List<double> maxTemps;
  final List<double> minTemps;
  final List<String> sunriseList;
  final List<String> sunsetList;
  final List<String> time;
  final List<int> weatherCodes;
  final List<double> temperatures;
  final List<double> dewpoints;
  final List<double> feelsLikeTemps;
  final List<int> visibility;
  final List<int> direction;
  final List<double> windSpeed;
  final List<double> windGust;
  final List<double> evapotranspiration;
  final List<double> precipitation;
  final List<double> rain;
  final List<int> precipitationProbability;
  final List<int> humidity;
  final List<int> cloudCover;
  final List<double> surfacePressure;
  final List<double> uvIndex;
  final List<double> radiation;

  WeatherEntity({
    required this.timeDaily,
    required this.weatherCodesDaily,
    required this.time,
    required this.weatherCodes,
    required this.temperatures,
    required this.maxTemps,
    required this.minTemps,
    required this.sunriseList,
    required this.sunsetList,
    required this.dewpoints,
    required this.feelsLikeTemps,
    required this.visibility,
    required this.direction,
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
