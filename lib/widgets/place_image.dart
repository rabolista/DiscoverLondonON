import 'package:flutter/material.dart';
import '../theme/colors.dart';
import 'remote_image.dart';

/// A place/attraction image: a real photo when one is available, otherwise a
/// forest-green tile with the place's icon.
class PlaceImage extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final String? imageUrl;

  const PlaceImage({
    super.key,
    required this.icon,
    this.iconSize = 24,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return RemoteImage(
      url: imageUrl,
      fallback: Container(
        color: AppColors.primary,
        child: Center(child: Icon(icon, size: iconSize, color: Colors.white)),
      ),
    );
  }
}
