import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:latlong2/latlong.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key, required this.lat, required this.lon});

  final double lat;
  final double lon;

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final MapController _mapController = MapController();
  double _currentZoom = 9.2;
  late LatLng _currentCenter;

  late LatLng _defaultCenter;
  static double _defaultZoom = 9.2;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _currentCenter = LatLng(widget.lat, widget.lon);
    _defaultCenter = LatLng(widget.lat, widget.lon);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Stack(
        children: [
          FlutterMap(
            mapController: _mapController, // Use the MapController
            options: MapOptions(
              initialCenter: _currentCenter, // Use the current center
              initialZoom: _currentZoom, // Use the current zoom level
              // onPositionChanged: (position, hasGesture) {
              //   // Update the current center when the map moves (if needed)
              //   if (hasGesture) {
              //     setState(() {
              //       _currentCenter = position.center;
              //       _currentZoom = position.zoom;
              //     });
              //   }
              // },
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.weather_app2',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    point:
                        _currentCenter, // Use the current center for the marker
                    width: 80,
                    height: 80,
                    child: FlutterLogo(),
                  ),
                ],
              ),
            ],
          ),

          Positioned(
            right: 10,
            bottom: 10,
            child: SpeedDial(
              overlayColor: Colors.transparent,
              overlayOpacity: 0.0,
              renderOverlay: false,
              animatedIcon: AnimatedIcons.menu_close,
              closeManually: true,
              children: [
                SpeedDialChild(
                  child: Icon(IconsaxPlusLinear.search_zoom_out),
                  onTap: () {
                    // Zoom out functionality
                    if (_currentZoom > 1.0) {
                      // Prevent zooming out too much
                      setState(() {
                        _currentZoom -= 1.0;
                        _mapController.move(
                          _currentCenter, // Use the current center
                          _currentZoom,
                        );
                      });
                    }
                  },
                ),
                SpeedDialChild(
                  child: Icon(IconsaxPlusLinear.search_zoom_in),
                  onTap: () {
                    // Zoom in functionality
                    if (_currentZoom < 18.0) {
                      // Prevent zooming in too much
                      setState(() {
                        _currentZoom += 1.0;
                        _mapController.move(
                          _currentCenter, // Use the current center
                          _currentZoom,
                        );
                      });
                    }
                  },
                ),
                SpeedDialChild(
                  child: Icon(IconsaxPlusLinear.home_2),
                  onTap: () {
                    // Reset the map to the default position and zoom
                    setState(() {
                      _currentZoom = _defaultZoom; // Reset to default zoom
                      _currentCenter =
                          _defaultCenter; // Reset to default center
                      _mapController.move(
                        _currentCenter, // Move to default center
                        _currentZoom, // Move to default zoom
                      );
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
