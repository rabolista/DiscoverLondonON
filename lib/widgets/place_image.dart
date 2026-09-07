import 'package:flutter/material.dart';
import '../theme/colors.dart';

/// Square forest-green tile with an icon, standing in for a bundled attraction/restaurant photo.
class PlaceImage extends StatelessWidget {
  final IconData icon;
  final double iconSize;

  const PlaceImage({super.key, required this.icon, this.iconSize = 24});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primary,
      child: Center(child: Icon(icon, size: iconSize, color: Colors.white)),
    );
  }
}
