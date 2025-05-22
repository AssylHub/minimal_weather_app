import 'package:flutter/foundation.dart';
import 'package:talker_flutter/talker_flutter.dart';

import '../../service/injectable/injectable_service.dart';

part 'debug.dart';
part 'error.dart';
part 'info.dart';

class Log {
  static void info(String title, Object message) =>
      sl<Talker>().logCustom(_InfoWithTitle(title, message.toString()));
  static void i(Object message) =>
      sl<Talker>().logCustom(_Info(message.toString()));

  static void error(String title, Object message) =>
      sl<Talker>().logCustom(_ErrorWithTitle(title, message.toString()));
  static void e(Object message) =>
      sl<Talker>().logCustom(_Error(message.toString()));

  static void debug(String title, Object message) =>
      kDebugMode
          ? sl<Talker>().logCustom(_DebugWithTitle(title, message.toString()))
          : null;
  static void d(Object message) =>
      kDebugMode ? sl<Talker>().logCustom(_Debug(message.toString())) : null;
}
