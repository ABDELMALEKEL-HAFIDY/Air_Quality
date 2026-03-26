import 'package:air_quality_1/core/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class AirlyCardWidgets extends StatelessWidget {
  const AirlyCardWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 110,
      left: 150,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 11),
        decoration: BoxDecoration(
          color: AppColors.lime.withValues(alpha: 0.7),
          borderRadius: BorderRadius.circular(345),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Iconsax.location_tick,
              size: 18,
              color: Color(0xFF1F2C3D),
            ),
            const SizedBox(width: 10),
            Text(
              'airly',
              style: GoogleFonts.montserratAlternates(
                color: Color(0xFF1F2C3D),

                fontSize: 20,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
