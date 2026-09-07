import 'package:flutter/material.dart';
import '../models/restaurant.dart';
import '../theme/colors.dart';
import '../widgets/get_directions_button.dart';

class RestaurantDetailScreen extends StatelessWidget {
  final Restaurant restaurant;

  const RestaurantDetailScreen({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(title: Text(restaurant.name)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Center(
            child: Container(
              width: 110,
              height: 110,
              margin: const EdgeInsets.only(top: 16, bottom: 24),
              decoration: const BoxDecoration(color: AppColors.primary, shape: BoxShape.circle),
              child: Icon(restaurant.icon, size: 50, color: Colors.white),
            ),
          ),
          Text(restaurant.name, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(Icons.star, size: 16, color: AppColors.primary),
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
            style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: AppColors.primary),
          ),
          const SizedBox(height: 12),
          Text(
            restaurant.details,
            style: TextStyle(fontSize: 15, color: Colors.grey[700], height: 1.4),
          ),
          if (restaurant.address.isNotEmpty) ...[
            const SizedBox(height: 16),
            GetDirectionsButton(placeName: restaurant.name, address: restaurant.address),
          ],
        ],
      ),
    );
  }
}
