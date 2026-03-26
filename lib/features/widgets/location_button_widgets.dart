import 'package:air_quality_1/core/app_theme.dart';
import 'package:flutter/material.dart';

class LocationButtonWidgets extends StatelessWidget {
  const LocationButtonWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 105,
      right: 20,
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: AppColors.topbar.withValues(alpha: 0.7),
          shape: BoxShape.circle,
        ),
        child: const Icon(Icons.my_location, color: Colors.white, size: 22),
      ),
    );
  }
}
