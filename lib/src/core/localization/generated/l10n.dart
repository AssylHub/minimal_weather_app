// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Forecast Page`
  String get forecase_page {
    return Intl.message(
      'Forecast Page',
      name: 'forecase_page',
      desc: '',
      args: [],
    );
  }

  /// `Use search or geolocation`
  String get use_search_or_geolocation {
    return Intl.message(
      'Use search or geolocation',
      name: 'use_search_or_geolocation',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Latitude`
  String get latitude {
    return Intl.message(
      'Latitude',
      name: 'latitude',
      desc: '',
      args: [],
    );
  }

  /// `Longitude`
  String get longitude {
    return Intl.message(
      'Longitude',
      name: 'longitude',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get city {
    return Intl.message(
      'City',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `District`
  String get district {
    return Intl.message(
      'District',
      name: 'district',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get done {
    return Intl.message(
      'Done',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `View Logs`
  String get view_logs {
    return Intl.message(
      'View Logs',
      name: 'view_logs',
      desc: '',
      args: [],
    );
  }

  /// `Enter a value`
  String get enter_a_value {
    return Intl.message(
      'Enter a value',
      name: 'enter_a_value',
      desc: '',
      args: [],
    );
  }

  /// `Hourly weather variables`
  String get hourly_weather_variables {
    return Intl.message(
      'Hourly weather variables',
      name: 'hourly_weather_variables',
      desc: '',
      args: [],
    );
  }

  /// `Dewpoint`
  String get dewpoint {
    return Intl.message(
      'Dewpoint',
      name: 'dewpoint',
      desc: '',
      args: [],
    );
  }

  /// `Feels`
  String get feels {
    return Intl.message(
      'Feels',
      name: 'feels',
      desc: '',
      args: [],
    );
  }

  /// `Visibility`
  String get visibility {
    return Intl.message(
      'Visibility',
      name: 'visibility',
      desc: '',
      args: [],
    );
  }

  /// `Direction`
  String get direction {
    return Intl.message(
      'Direction',
      name: 'direction',
      desc: '',
      args: [],
    );
  }

  /// `Wind`
  String get wind {
    return Intl.message(
      'Wind',
      name: 'wind',
      desc: '',
      args: [],
    );
  }

  /// `Gust`
  String get gust {
    return Intl.message(
      'Gust',
      name: 'gust',
      desc: '',
      args: [],
    );
  }

  /// `Evapotranspiration`
  String get evapotranspiration {
    return Intl.message(
      'Evapotranspiration',
      name: 'evapotranspiration',
      desc: '',
      args: [],
    );
  }

  /// `Precipitation`
  String get precipitation {
    return Intl.message(
      'Precipitation',
      name: 'precipitation',
      desc: '',
      args: [],
    );
  }

  /// `Rain`
  String get rain {
    return Intl.message(
      'Rain',
      name: 'rain',
      desc: '',
      args: [],
    );
  }

  /// `Precipitation Probability`
  String get precipitation_probability {
    return Intl.message(
      'Precipitation Probability',
      name: 'precipitation_probability',
      desc: '',
      args: [],
    );
  }

  /// `Humidity`
  String get humidity {
    return Intl.message(
      'Humidity',
      name: 'humidity',
      desc: '',
      args: [],
    );
  }

  /// `Cloudcover`
  String get cloudcover {
    return Intl.message(
      'Cloudcover',
      name: 'cloudcover',
      desc: '',
      args: [],
    );
  }

  /// `Pressure`
  String get pressure {
    return Intl.message(
      'Pressure',
      name: 'pressure',
      desc: '',
      args: [],
    );
  }

  /// `UV-Index`
  String get uv_index {
    return Intl.message(
      'UV-Index',
      name: 'uv_index',
      desc: '',
      args: [],
    );
  }

  /// `Shortwave Radiation`
  String get shortwave_radiation {
    return Intl.message(
      'Shortwave Radiation',
      name: 'shortwave_radiation',
      desc: '',
      args: [],
    );
  }

  /// `Clear Sky`
  String get clear_sky {
    return Intl.message(
      'Clear Sky',
      name: 'clear_sky',
      desc: '',
      args: [],
    );
  }

  /// `Cloudy`
  String get cloudy {
    return Intl.message(
      'Cloudy',
      name: 'cloudy',
      desc: '',
      args: [],
    );
  }

  /// `Overcast`
  String get overcast {
    return Intl.message(
      'Overcast',
      name: 'overcast',
      desc: '',
      args: [],
    );
  }

  /// `Fog`
  String get fog {
    return Intl.message(
      'Fog',
      name: 'fog',
      desc: '',
      args: [],
    );
  }

  /// `Drizzle`
  String get drizzle {
    return Intl.message(
      'Drizzle',
      name: 'drizzle',
      desc: '',
      args: [],
    );
  }

  /// `Drizzling Rain`
  String get drizzling_rain {
    return Intl.message(
      'Drizzling Rain',
      name: 'drizzling_rain',
      desc: '',
      args: [],
    );
  }

  /// `Freezing Rain`
  String get freezing_rain {
    return Intl.message(
      'Freezing Rain',
      name: 'freezing_rain',
      desc: '',
      args: [],
    );
  }

  /// `Heavy Rains`
  String get heavy_rains {
    return Intl.message(
      'Heavy Rains',
      name: 'heavy_rains',
      desc: '',
      args: [],
    );
  }

  /// `Snow`
  String get snow {
    return Intl.message(
      'Snow',
      name: 'snow',
      desc: '',
      args: [],
    );
  }

  /// `Thunderstorm`
  String get thunderstorm {
    return Intl.message(
      'Thunderstorm',
      name: 'thunderstorm',
      desc: '',
      args: [],
    );
  }

  /// `m/s`
  String get m_s {
    return Intl.message(
      'm/s',
      name: 'm_s',
      desc: '',
      args: [],
    );
  }

  /// `km/h`
  String get kph {
    return Intl.message(
      'km/h',
      name: 'kph',
      desc: '',
      args: [],
    );
  }

  /// `mph`
  String get mph {
    return Intl.message(
      'mph',
      name: 'mph',
      desc: '',
      args: [],
    );
  }

  /// `mmHg`
  String get mmHg {
    return Intl.message(
      'mmHg',
      name: 'mmHg',
      desc: '',
      args: [],
    );
  }

  /// `hPa`
  String get hPa {
    return Intl.message(
      'hPa',
      name: 'hPa',
      desc: '',
      args: [],
    );
  }

  /// `km`
  String get km {
    return Intl.message(
      'km',
      name: 'km',
      desc: '',
      args: [],
    );
  }

  /// `mi`
  String get mi {
    return Intl.message(
      'mi',
      name: 'mi',
      desc: '',
      args: [],
    );
  }

  /// `mm`
  String get mm {
    return Intl.message(
      'mm',
      name: 'mm',
      desc: '',
      args: [],
    );
  }

  /// `inch`
  String get inch {
    return Intl.message(
      'inch',
      name: 'inch',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
