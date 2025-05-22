import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DioProvider {
  @lazySingleton
  Dio get dio => Dio(
        BaseOptions(
          connectTimeout: const Duration(seconds: 10),
          receiveTimeout: const Duration(seconds: 10),
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'User-Agent': 'weather_app',
          },
        ),
      );
}