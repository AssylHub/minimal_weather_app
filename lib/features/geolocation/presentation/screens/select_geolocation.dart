import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:latlong2/latlong.dart';
import 'package:weather_app2/features/geolocation/di/geolocation_di.dart';
import 'package:weather_app2/features/geolocation/domain/usecases/get_current_location.dart';
import 'package:weather_app2/features/geolocation/domain/usecases/get_location_by_city.dart';
import 'package:weather_app2/features/geolocation/presentation/bloc/geolocation_bloc.dart';
import 'package:weather_app2/features/home/presentation/screens/home_screen.dart';
import 'package:weather_app2/features/weather/presentation/screens/weather_screen.dart';

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
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder:
              (context) => HomeScreen(
                lat: double.parse(latController.text.trim()),
                lon: double.parse(longController.text.trim()),
                cityName: cityController.text.trim(),
                district: districtController.text.trim(),
              ),
        ),
      );
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
                      Center(child: Text("Use search or geolocation")),
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
                                  hintText: "Search",
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
                          hintText: "Latitude",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                        ),

                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter a value.";
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
                          hintText: "Longitude",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter a value.";
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
                          hintText: "City",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter a value.";
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
                          hintText: "District",
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
                        child: Text("Done"),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.grey.shade200,
                          foregroundColor: Colors.black,
                          minimumSize: Size(double.infinity, 50),
                        ),
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
