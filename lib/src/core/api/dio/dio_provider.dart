import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app2/src/core/api/dio/dio_config.dart';

@module
abstract class DioProvider {
  @lazySingleton
  Dio get dio => Dio(
    BaseOptions(
      connectTimeout: DioConfig.connectTimeout,
      receiveTimeout: DioConfig.receiveTimeout,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'User-Agent': 'weather_app',
      },
    ),
  );
}
