import 'package:air_quality_1/core/app_theme.dart';
import 'package:air_quality_1/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class TopBarWidgets extends StatelessWidget {
  const TopBarWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 16,
      left: 16,
      right: 16,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: AppColors.topbar.withValues(alpha: 0.7),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: const BoxDecoration(shape: BoxShape.circle),
                child: ClipOval(
                  child: Image.asset(Assets.imagesIconsMap, fit: BoxFit.cover),
                ),
              ),
              const SizedBox(width: 12),
              const Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'San Francisco',
                      style: TextStyle(
                        color: AppColors.water,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      'CA, USA',
                      style: TextStyle(
                        color: AppColors.mapBg,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 60,
                height: 60,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 58, 76, 85),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Iconsax.search_normal,
                  color: AppColors.subtitle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
