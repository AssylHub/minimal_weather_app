import 'package:get/get.dart';
import 'package:weather_app2/gen/assets.gen.dart';
import 'package:weather_app2/src/core/localization/generated/l10n.dart';

const assetImageRoot = 'assets/images/';

class StatusWeather {
  final Map<String, List<int>> _weatherConditions = {
    'clear': [0],
    'cloud': [1, 2, 3],
    'fog': [45, 48],
    'rain': [51, 53, 55, 56, 57, 61, 63, 65, 66, 67],
    'rainFall': [80, 81, 82],
    'snow': [71, 73, 75, 77, 85, 86],
    'thunder': [95],
    'storm': [96, 99],
  };

  AssetGenImage getImageNow(
    int weather,
    String time,
    String timeDay,
    String timeNight,
  ) {
    final currentTime = DateTime.parse(time);
    final day = DateTime.parse(timeDay);
    final night = DateTime.parse(timeNight);

    final dayTime = DateTime(
      day.year,
      day.month,
      day.day,
      day.hour,
      day.minute,
    );
    final nightTime = DateTime(
      night.year,
      night.month,
      night.day,
      night.hour,
      night.minute,
    );

    final isDay =
        currentTime.isAfter(dayTime) && currentTime.isBefore(nightTime);

    for (final entry in _weatherConditions.entries) {
      if (entry.value.contains(weather)) {
        switch (entry.key) {
          case 'clear':
            return isDay ? Assets.images.clearDay : Assets.images.fullMoon;
          case 'cloud':
            return isDay ? Assets.images.cloud : Assets.images.moon;
          case 'fog':
            return isDay ? Assets.images.fog : Assets.images.fogMoon;
          case 'rain':
            return Assets.images.rain;
          case 'rainFall':
            return Assets.images.rainFall;
          case 'snow':
            return Assets.images.snow;
          case 'thunder':
            return Assets.images.thunder;
          case 'storm':
            return Assets.images.storm;
        }
      }
    }
    return Assets.images.clearDay;
  }

  AssetGenImage getImageNowDaily(int? weather) {
    for (final entry in _weatherConditions.entries) {
      if (entry.value.contains(weather)) {
        switch (entry.key) {
          case 'clear':
            return Assets.images.sun;
          case 'cloud':
            return Assets.images.cloud;
          case 'fog':
            return Assets.images.fog;
          case 'rain':
            return Assets.images.rain;
          case 'rainFall':
            return Assets.images.rainFall;
          case 'snow':
            return Assets.images.snow;
          case 'thunder':
            return Assets.images.thunder;
          case 'storm':
            return Assets.images.storm;
        }
      }
    }
    return Assets.images.sun;
  }

  AssetGenImage getImageToday(
    int weather,
    String time,
    String timeDay,
    String timeNight,
  ) {
    final currentTime = DateTime.parse(time);
    final day = DateTime.parse(timeDay);
    final night = DateTime.parse(timeNight);

    final dayTime = DateTime(
      day.year,
      day.month,
      day.day,
      day.hour,
      day.minute,
    );
    final nightTime = DateTime(
      night.year,
      night.month,
      night.day,
      night.hour,
      night.minute,
    );

    final isDay =
        currentTime.isAfter(dayTime) && currentTime.isBefore(nightTime);

    for (final entry in _weatherConditions.entries) {
      if (entry.value.contains(weather)) {
        switch (entry.key) {
          case 'clear':
            return isDay ? Assets.images.clearDay : Assets.images.clearNight;
          case 'cloud':
            return isDay ? Assets.images.cloudyDay : Assets.images.cloudyNight;
          case 'fog':
            return isDay ? Assets.images.fogDay : Assets.images.fogNight;
          case 'rain':
          case 'rainFall':
            return isDay ? Assets.images.rainDay : Assets.images.rainNight;
          case 'snow':
            return isDay ? Assets.images.snowDay : Assets.images.snowNight;
          case 'thunder':
          case 'storm':
            return isDay
                ? Assets.images.thunderDay
                : Assets.images.thunderNight;
        }
      }
    }
    return Assets.images.clearDay;
  }

  AssetGenImage getImage7Day(int? weather) {
    for (final entry in _weatherConditions.entries) {
      if (entry.value.contains(weather)) {
        switch (entry.key) {
          case 'clear':
            return Assets.images.clearDay;
          case 'cloud':
            return Assets.images.cloudyDay;
          case 'fog':
            return Assets.images.fogDay;
          case 'rain':
          case 'rainFall':
            return Assets.images.rainDay;
          case 'snow':
            return Assets.images.snowDay;
          case 'thunder':
          case 'storm':
            return Assets.images.thunderDay;
        }
      }
    }
    return Assets.images.clearDay;
  }

  String getText(int? weather) {
    switch (weather) {
      case 0:
        return S.current.clear_sky;
      case 1:
      case 2:
        return S.current.cloudy;
      case 3:
        return S.current.overcast;
      case 45:
      case 48:
        return S.current.fog;
      case 51:
      case 53:
      case 55:
        return S.current.drizzle;
      case 56:
      case 57:
        return S.current.drizzling_rain;
      case 61:
      case 63:
      case 65:
        return S.current.rain;
      case 66:
      case 67:
        return S.current.freezing_rain;
      case 80:
      case 81:
      case 82:
        return S.current.heavy_rains;
      case 71:
      case 73:
      case 75:
      case 77:
      case 85:
      case 86:
        return S.current.snow;
      case 95:
      case 96:
      case 99:
        return S.current.thunderstorm;
      default:
        return '';
    }
  }

  AssetGenImage getImageNotification(
    int weather,
    String time,
    String timeDay,
    String timeNight,
  ) {
    final currentTime = DateTime.parse(time);
    final day = DateTime.parse(timeDay);
    final night = DateTime.parse(timeNight);

    final dayTime = DateTime(
      day.year,
      day.month,
      day.day,
      day.hour,
      day.minute,
    );
    final nightTime = DateTime(
      night.year,
      night.month,
      night.day,
      night.hour,
      night.minute,
    );

    final isDay =
        currentTime.isAfter(dayTime) && currentTime.isBefore(nightTime);

    for (final entry in _weatherConditions.entries) {
      if (entry.value.contains(weather)) {
        switch (entry.key) {
          case 'clear':
            return isDay ? Assets.images.sun : Assets.images.fullMoon;
          case 'cloud':
            return isDay ? Assets.images.cloud : Assets.images.moon;
          case 'fog':
            return isDay ? Assets.images.fog : Assets.images.fogMoon;
          case 'rain':
            return Assets.images.rain;
          case 'rainFall':
            return Assets.images.rainFall;
          case 'snow':
            return Assets.images.snow;
          case 'thunder':
            return Assets.images.thunder;
          case 'storm':
            return Assets.images.storm;
        }
      }
    }
    return Assets.images.sun;
  }
}
