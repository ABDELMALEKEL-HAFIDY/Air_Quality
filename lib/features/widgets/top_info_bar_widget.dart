import 'package:air_quality_1/core/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class TopInfoBarWidget extends StatelessWidget {
  const TopInfoBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Positioned(
      height: height * 0.07,
      top: 20,
      left: 16,
      right: 16,
      child: Row(
        children: [
          _CircleIconButton(icon: Iconsax.setting_2_copy),
          const Spacer(),
          const Text(
            'San Francisco',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
          _CircleIconButton(icon: Iconsax.search_normal_1_copy),
        ],
      ),
    );
  }
}

class _CircleIconButton extends StatelessWidget {
  final IconData icon;

  const _CircleIconButton({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: AppColors.topbar.withOpacity(0.45),
        shape: BoxShape.circle,
      ),
      child: Icon(icon, color: Colors.white, size: 22),
    );
  }
}
