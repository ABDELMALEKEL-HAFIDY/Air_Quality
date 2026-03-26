import 'package:air_quality_1/features/widgets/airly_card_widgets.dart';
import 'package:air_quality_1/features/widgets/bottom_switcher_widget.dart';
import 'package:air_quality_1/features/widgets/location_button_widgets.dart';
import 'package:air_quality_1/features/widgets/map_backround_widgets.dart';
import 'package:air_quality_1/features/widgets/top_bar_widgets.dart';
import 'package:flutter/material.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  bool isMapSelected = true;
  void toggleView (bool value){
    setState(() {
      isMapSelected = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            MapBackroundWidgets(),
            TopBarWidgets(),
            AirlyCardWidgets(),
            LocationButtonWidgets(),
            BottomSwitcherWidget(
              isMapSelected: isMapSelected,
              onChanged: toggleView,
            ),
          ],
        ),
      ),
    );
  }
}
