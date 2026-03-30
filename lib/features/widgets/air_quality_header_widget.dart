import 'package:air_quality_1/core/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class AirQualityHeaderWidget extends StatelessWidget {
  const AirQualityHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 90,
      left: 16,
      right: 16,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.90),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: const Text(
                  'Real-time',
                  style: TextStyle(
                    color: Color(0xFF44515E),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(width: 14),
              const Text(
                'Air',
                style: TextStyle(
                  color: Colors.white,
                  height: 0.95,
                  fontSize: 51,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          const Text(
            'quality data',
            style: TextStyle(
              color: Colors.white,
              height: 0.95,
              fontSize: 51,
              fontWeight: FontWeight.w400,
            ),
          ),

          const SizedBox(height: 20),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
              decoration: BoxDecoration(
                color: AppColors.topbar.withOpacity(0.65),
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Favourites',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 8),
                  Icon(
                    Iconsax.arrow_down_1_copy,
                    color: Colors.white,
                    size: 18,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
