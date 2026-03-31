import 'package:air_quality_1/features/widgets/home_card_widgets.dart';

import 'package:air_quality_1/features/widgets/office_card_widgets.dart';
import 'package:flutter/material.dart';

class LocationsPanelWidget extends StatelessWidget {
  const LocationsPanelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      top: MediaQuery.of(context).size.height * 0.36,
      child: Container(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.zero,
          children: const [
            HomeCardWidget(),
            SizedBox(height: 16),
            OfficeCardWidget(),
            SizedBox(height: 16),
            OfficeCardWidget(),
            SizedBox(height: 16),
            OfficeCardWidget(),
          ],
        ),
      ),
    );
  }
}
