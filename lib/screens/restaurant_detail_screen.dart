import 'package:flutter/material.dart';
import '../models/restaurant.dart';
import '../theme/colors.dart';
import '../widgets/get_directions_button.dart';
import '../widgets/image_credit_chip.dart';
import '../widgets/place_image.dart';

class RestaurantDetailScreen extends StatelessWidget {
  final Restaurant restaurant;

  const RestaurantDetailScreen({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background(context),
      appBar: AppBar(title: Text(restaurant.name)),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 220,
            child: Stack(
              fit: StackFit.expand,
              children: [
                PlaceImage(icon: restaurant.icon, iconSize: 48, imageUrl: restaurant.imageUrl),
                if (restaurant.imageCredit != null)
                  Positioned(
                    right: 6,
                    top: 6,
                    child: ImageCreditChip(text: restaurant.imageCredit!),
                  ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(restaurant.name, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.star, size: 16, color: AppColors.accent(context)),
                    const SizedBox(width: 4),
                    Text(
                      '${restaurant.rating.toStringAsFixed(1)} • ${restaurant.cuisine} • ${restaurant.priceRange}',
                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  restaurant.neighbourhood,
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: AppColors.accent(context)),
                ),
                const SizedBox(height: 12),
                Text(
                  restaurant.details,
                  style: TextStyle(fontSize: 15, color: AppColors.muted(context), height: 1.4),
                ),
                if (restaurant.address.isNotEmpty) ...[
                  const SizedBox(height: 16),
                  GetDirectionsButton(placeName: restaurant.name, address: restaurant.address),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
