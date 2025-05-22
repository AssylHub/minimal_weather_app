import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:talker_bloc_logger/talker_bloc_logger_observer.dart';
import 'package:talker_bloc_logger/talker_bloc_logger_settings.dart';
import 'package:talker_dio_logger/talker_dio_logger_interceptor.dart';
import 'package:talker_dio_logger/talker_dio_logger_settings.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:weather_app2/src/core/service/injectable/injectable_service.config.dart';
import 'package:weather_app2/src/core/service/injectable/manual_register_services.dart';

final sl = GetIt.instance;

@InjectableInit()
Future<void> init() async {
  await _initializeTalker();
  sl.init();
  manualRegisterServices();
}

Future<void> _initializeTalker() async {
  final talker = TalkerFlutter.init();
  sl.registerLazySingleton<Talker>(() => talker);
  sl.registerLazySingleton<TalkerDioLogger>(
    () => TalkerDioLogger(
      talker: talker,
      settings: const TalkerDioLoggerSettings(
        printRequestHeaders: true,
        printResponseHeaders: false,
        printResponseMessage: true,
      ),
    ),
  );
  Bloc.observer = TalkerBlocObserver(
    talker: talker,
    settings: const TalkerBlocLoggerSettings(
      enabled: true,
      printEventFullData: true,
      printStateFullData: true,
    ),
  );
}
