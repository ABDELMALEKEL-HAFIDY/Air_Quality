import 'package:air_quality_1/core/utils/assets.dart';
import 'package:flutter/material.dart';

class MapBackroundWidgets extends StatelessWidget {
  const MapBackroundWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
      color:  Color(0xFF2B3C53), 
       //borderRadius: BorderRadius.circular(30)
      ),
      child: Image.asset(
        Assets.imagesMapbackround,
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
        ),
    );
  }
}
