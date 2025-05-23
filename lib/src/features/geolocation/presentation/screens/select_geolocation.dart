import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:latlong2/latlong.dart';
import 'package:weather_app2/src/app/presentation/screens/talker_log_screen.dart';
import 'package:weather_app2/src/core/router/router.dart';
import 'package:weather_app2/src/core/service/injectable/injectable_service.dart';
import 'package:weather_app2/src/features/geolocation/domain/entities/geolocation_entity.dart';
import 'package:weather_app2/src/features/geolocation/domain/usecases/get_current_location.dart';
import 'package:weather_app2/src/features/geolocation/domain/usecases/get_location_by_city.dart';
import 'package:weather_app2/src/features/geolocation/presentation/bloc/geolocation_bloc.dart';
import 'package:weather_app2/src/core/localization/generated/l10n.dart';
import 'package:talker_flutter/talker_flutter.dart';

class SelectGeolocation extends StatefulWidget {
  const SelectGeolocation({super.key, required this.isStart});

  final bool isStart;

  @override
  State<SelectGeolocation> createState() => _SelectGeolocationState();
}

class _SelectGeolocationState extends State<SelectGeolocation> {
  final formKey = GlobalKey<FormState>();

  final TextEditingController searchController = TextEditingController();
  final TextEditingController latController = TextEditingController();
  final TextEditingController longController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController districtController = TextEditingController();
  final mapController = MapController();

  void submitForm() {
    if (formKey.currentState!.validate()) {
      final geolocation = GeolocationEntity(
        latitude: double.parse(latController.text.trim()),
        longitude: double.parse(longController.text.trim()),
        city: cityController.text.trim(),
        district: districtController.text.trim(),
      );
      if (widget.isStart) {
        context.go(RoutePaths.home, extra: geolocation);
      } else {
        context.pop(geolocation);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) => GeolocationBloc(
            getCurrentLocation: sl<GetCurrentLocation>(),
            getLocationByCity: sl<GetLocationByCity>(),
          ),
      child: BlocConsumer<GeolocationBloc, GeolocationState>(
        listener: (context, state) {
          if (state is GeolocationLoading) {
            print(state);
          }

          if (state is GeolocationError) {
            print('Error: ${state.message}');
          }

          if (state is GeolocationLoaded) {
            latController.text = state.location.latitude.toString();
            longController.text = state.location.longitude.toString();
            cityController.text = state.location.city;
            districtController.text = state.location.district;
          }
        },
        builder: (blocContext, state) {
          if (state is GeolocationLoading) {
            return Stack(
              children: [
                ImageFiltered(
                  imageFilter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: buildUI(blocContext),
                ),

                Center(child: CircularProgressIndicator()),
              ],
            );
          }

          return buildUI(blocContext);
        },
      ),
    );
  }

  Widget buildUI(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading:
            widget.isStart
                ? null
                : IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(IconsaxPlusLinear.arrow_left_3),
                ),
        title: Text("Find your city"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height,
              ),
              child: IntrinsicHeight(
                child: Form(
                  key: formKey,
                  child: Column(
                    spacing: 12,
                    children: [
                      SizedBox(
                        height: 300,
                        child: FlutterMap(
                          options: MapOptions(
                            initialCenter: LatLng(
                              42.9000, // Latitude
                              71.3667, // Longitude
                            ), // Center the map over London
                            initialZoom: 9.2,
                          ),
                          children: [
                            TileLayer(
                              urlTemplate:
                                  'https://tile.openstreetmap.org/{z}/{x}/{y}.png', // For demonstration only
                              userAgentPackageName:
                                  'com.example.weather_app2', // Add your app identifier
                            ),
                          ],
                        ),
                      ),
                      Center(child: Text(S.current.use_search_or_geolocation)),
                      IntrinsicHeight(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          spacing: 12,
                          children: [
                            Flexible(
                              child: TextFormField(
                                controller: searchController,
                                textAlignVertical: TextAlignVertical.center,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    IconsaxPlusLinear.global_search,
                                  ),
                                  fillColor: Colors.grey.shade200,
                                  filled: true,
                                  hintText: S.current.search,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                                onFieldSubmitted: (value) {
                                  if (value.trim().isNotEmpty) {
                                    context.read<GeolocationBloc>().add(
                                      GetLocationByCityEvent(value.trim()),
                                    );
                                  }

                                  searchController.clear();
                                },
                              ),
                            ),

                            Container(
                              padding: EdgeInsets.all(2.5),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: IconButton(
                                onPressed: () {
                                  context.read<GeolocationBloc>().add(
                                    GetCurrentLocationEvent(),
                                  );
                                },
                                icon: Icon(IconsaxPlusLinear.location),
                              ),
                            ),
                          ],
                        ),
                      ),

                      TextFormField(
                        controller: latController,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          prefixIcon: Icon(IconsaxPlusLinear.location),
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          hintText: S.current.latitude,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                        ),

                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return S.current.enter_a_value;
                          }

                          return null;
                        },
                      ),
                      TextFormField(
                        controller: longController,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          prefixIcon: Icon(IconsaxPlusLinear.location),
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          hintText: S.current.longitude,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return S.current.enter_a_value;
                          }

                          return null;
                        },
                      ),
                      TextFormField(
                        controller: cityController,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          prefixIcon: Icon(IconsaxPlusLinear.building_3),
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          hintText: S.current.city,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return S.current.enter_a_value;
                          }

                          return null;
                        },
                      ),
                      TextFormField(
                        controller: districtController,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          prefixIcon: Icon(IconsaxPlusLinear.global),
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          hintText: S.current.district,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),

                      Spacer(),
                      TextButton(
                        onPressed: () {
                          submitForm();
                        },
                        child: Text(S.current.done),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.grey.shade200,
                          foregroundColor: Colors.black,
                          minimumSize: Size(double.infinity, 50),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const TalkerLogScreen(),
                            ),
                          );
                        },
                        child: Text(S.current.view_logs),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
