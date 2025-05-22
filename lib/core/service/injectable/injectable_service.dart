import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app2/core/service/injectable/injectable_service.config.dart';
import 'package:weather_app2/core/service/injectable/manual_register_services.dart';

final sl = GetIt.instance;

@InjectableInit()
Future<void> init() async {
  sl.init();
  manualRegisterServices();
}
