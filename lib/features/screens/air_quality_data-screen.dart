import 'package:air_quality_1/features/widgets/air_quality_header_widget.dart';
import 'package:air_quality_1/features/widgets/bottom_switcher_widget.dart';
import 'package:air_quality_1/features/widgets/location_button_widgets.dart';
import 'package:air_quality_1/features/widgets/top_info_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AirQualityDataScreen extends StatelessWidget {
  const AirQualityDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: const Color(0xFFA8BAC8),
      body: SafeArea(
        child: Stack(
          children: [
            TopInfoBarWidget(),
            AirQualityHeaderWidget(),
            //LocationButtonWidgets(),
            BottomSwitcherWidget(
              isMapSelected: false,
              onMapTap: () {
                context.goNamed('home');
              },
              onGridTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
