part of "router.dart";

List<RouteBase> _routes() => <RouteBase>[
  GoRoute(
    path: RoutePaths.initial,
    name: RouteNames.initial,
    builder: (context, state) => const InitialLoader(),
  ),
  GoRoute(
    path: RoutePaths.home,
    name: RouteNames.home,
    builder: (context, state) {
      final geolocation = state.extra as GeolocationEntity;
      return HomeScreen(geolocation: geolocation);
    },
  ),

  GoRoute(
    path: RoutePaths.geolocation,
    name: RouteNames.geolocation,
    builder: (context, state) => SelectGeolocation(isStart: true),
  ),
];
