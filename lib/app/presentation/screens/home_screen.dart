import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:weather_app2/features/geolocation/domain/entities/geolocation_entity.dart';
import 'package:weather_app2/features/geolocation/presentation/bloc/geolocation_bloc.dart';
import 'package:weather_app2/features/geolocation/presentation/screens/select_geolocation.dart';
import 'package:weather_app2/features/map/presentation/screens/map_screen.dart';
import 'package:weather_app2/features/weather/presentation/bloc/weather_bloc.dart';
import 'package:weather_app2/features/weather/presentation/screens/weather_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.geolocation});

  final GeolocationEntity geolocation;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  int tabIndex = 0;
  bool isVisible = false;
  late TabController tabController;
  final TextEditingController searchController = TextEditingController();

  List<Widget> screens = [];

  @override
  void initState() {
    super.initState();
    setupTabController();
    context.read<WeatherBloc>().add(
      FetchWeatherByCordEvent(
        widget.geolocation.latitude,
        widget.geolocation.longitude,
        widget.geolocation.city,
        widget.geolocation.district,
      ),
    );
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  void setupTabController() {
    screens = [
      WeatherScreen(
        lat: widget.geolocation.latitude,
        lon: widget.geolocation.longitude,
      ),
      Center(child: Text("Forecast Page")),
      MapScreen(
        lat: widget.geolocation.latitude,
        lon: widget.geolocation.longitude,
      ),
      Center(child: Text("Forecast Page")),
    ];
    tabController = TabController(
      initialIndex: tabIndex,
      length: screens.length,
      vsync: this,
    );

    tabController.animation?.addListener(() {
      int value = (tabController.animation!.value).round();
      if (value != tabIndex) setState(() => tabIndex = value);
    });

    tabController.addListener(() {
      setState(() {
        tabIndex = tabController.index;
      });
    });
  }

  void changeTabIndex(int index) {
    setState(() {
      tabIndex = index;
    });
    tabController.animateTo(tabIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: switch (tabIndex) {
          0 => IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SelectGeolocation(isStart: false),
                ),
              );
            },
            icon: Icon(IconsaxPlusLinear.global_search),
          ),
          int() => null,
        },
        title: switch (tabIndex) {
          0 =>
            isVisible
                ? TextField(
                  controller: searchController,
                  onSubmitted: (value) {
                    context.read<GeolocationBloc>().add(
                      GetLocationByCityEvent(searchController.text),
                    );
                  },
                )
                : Text(
                  "${widget.geolocation.city} ${widget.geolocation.district}",
                  maxLines: 2,
                ),
          int() => null,
        },
        actions: switch (tabIndex) {
          0 => [
            IconButton(
              onPressed: () {
                if (isVisible) {
                  isVisible = false;
                } else {
                  isVisible = true;
                }
                setState(() {});
              },
              icon: Icon(IconsaxPlusLinear.search_normal_1),
            ),
          ],
          int() => null,
        },
      ),
      body: TabBarView(controller: tabController, children: screens),
      bottomNavigationBar: NavigationBar(
        selectedIndex: tabIndex,
        onDestinationSelected: (int index) => changeTabIndex(index),
        destinations: [
          NavigationDestination(
            icon: Icon(IconsaxPlusLinear.cloud_sunny),
            selectedIcon: Icon(IconsaxPlusBold.cloud_sunny),
            label: "Weather",
          ),
          NavigationDestination(
            icon: Icon(IconsaxPlusLinear.building),
            selectedIcon: Icon(IconsaxPlusBold.building),
            label: "Weather",
          ),
          NavigationDestination(
            icon: Icon(IconsaxPlusLinear.map),
            selectedIcon: Icon(IconsaxPlusBold.map),
            label: "Weather",
          ),
          NavigationDestination(
            icon: Icon(IconsaxPlusLinear.category),
            selectedIcon: Icon(IconsaxPlusBold.category),
            label: "Weather",
          ),
        ],
      ),
    );
  }
}
