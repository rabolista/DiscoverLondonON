import 'package:flutter/material.dart';
import '../models/place.dart';
import '../theme/colors.dart';
import '../widgets/get_directions_button.dart';
import '../widgets/place_image.dart';

class PlaceDetailScreen extends StatelessWidget {
  final Place place;

  const PlaceDetailScreen({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background(context),
      appBar: AppBar(title: Text(place.name)),
      body: ListView(
        children: [
          SizedBox(height: 220, child: PlaceImage(icon: place.icon, iconSize: 48)),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(place.name, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                const SizedBox(height: 6),
                Text(
                  place.category,
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: AppColors.accent(context)),
                ),
                const SizedBox(height: 12),
                Text(
                  place.details,
                  style: TextStyle(fontSize: 15, color: AppColors.muted(context), height: 1.4),
                ),
                if (place.address.isNotEmpty) ...[
                  const SizedBox(height: 16),
                  GetDirectionsButton(placeName: place.name, address: place.address),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
