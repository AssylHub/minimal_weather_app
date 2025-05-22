import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_app2/src/features/geolocation/domain/entities/geolocation_entity.dart';
import 'package:weather_app2/src/features/geolocation/presentation/screens/select_geolocation.dart';
import 'package:weather_app2/src/app/presentation/screens/home_screen.dart';

part "route_list.dart";
part "route_names.dart";
part "route_paths.dart";

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

GoRouter routerProvider() {
  final goRouter = GoRouter(
    initialLocation: RoutePaths.geolocation,
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigatorKey,
    routes: _routes(),
  );

  return goRouter;
}
