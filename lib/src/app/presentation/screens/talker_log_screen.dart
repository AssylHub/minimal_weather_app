import 'package:flutter/widgets.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:weather_app2/src/core/service/injectable/injectable_service.dart';

class TalkerLogScreen extends StatelessWidget {
  const TalkerLogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TalkerScreen(talker: sl<Talker>());
  }
}
