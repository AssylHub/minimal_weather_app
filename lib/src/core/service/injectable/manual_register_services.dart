import 'package:http/http.dart' as http;
import 'package:weather_app2/src/core/constants/app_constants.dart';
import 'package:weather_app2/src/core/service/injectable/injectable_service.dart';

void manualRegisterServices() {
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => AppConstants.apiKey);
}
