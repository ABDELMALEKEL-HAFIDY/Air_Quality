import 'package:air_quality_1/features/widgets/airly_card_widgets.dart';
import 'package:air_quality_1/features/widgets/bottom_switcher_widget.dart';
import 'package:air_quality_1/features/widgets/location_button_widgets.dart';
import 'package:air_quality_1/features/widgets/map_backround_widgets.dart';
import 'package:air_quality_1/features/widgets/top_bar_widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  bool isMapSelected = true;
  
  
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
              onMapTap: (){
                setState((){
                  isMapSelected =true;
                });
              },
               onGridTap: (){
                  setState(() {
                    isMapSelected = false;
                  });
                   context.goNamed('airQualityData');
                },
            ),
          ],
        ),
      ),
    );
  }
}
