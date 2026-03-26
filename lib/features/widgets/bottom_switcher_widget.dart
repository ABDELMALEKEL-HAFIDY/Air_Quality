import 'package:flutter/material.dart';

class BottomSwitcherWidget extends StatelessWidget {
  const BottomSwitcherWidget({
    super.key,
    required this.isMapSelected,
    required this.onChanged,
  });
  final bool isMapSelected;
  final ValueChanged<bool> onChanged;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20,
      left: 0,
      right: 0,
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                onTap: () => onChanged(true),
                child: Container(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                    color: isMapSelected ? Colors.black : Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.map_outlined,
                    color: isMapSelected ? Colors.white : Colors.black,
                    size: 24,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              GestureDetector(
                onTap: () => onChanged(false),
                child: Container(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                    color: !isMapSelected ? Colors.black : Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.grid_view_rounded,
                    color: isMapSelected ? Colors.black : Colors.white,
                    size: 22,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
