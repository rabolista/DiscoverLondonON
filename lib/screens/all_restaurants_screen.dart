import 'package:flutter/material.dart';
import '../models/restaurant.dart';
import '../theme/colors.dart';
import '../widgets/place_image.dart';
import '../widgets/tile.dart';
import 'restaurant_detail_screen.dart';

class AllRestaurantsScreen extends StatelessWidget {
  final List<Restaurant> restaurants;

  const AllRestaurantsScreen({super.key, required this.restaurants});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background(context),
      appBar: AppBar(title: const Text('London Restaurants')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          for (final restaurant in restaurants)
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => RestaurantDetailScreen(restaurant: restaurant)),
                ),
                borderRadius: BorderRadius.circular(6),
                child: Tile(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(24),
                        child: SizedBox(
                          width: 48,
                          height: 48,
                          child: PlaceImage(
                            icon: restaurant.icon,
                            iconSize: 20,
                            imageUrl: restaurant.imageUrl,
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(restaurant.name, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
                            const SizedBox(height: 4),
                            Row(
                              children: [
                                Icon(Icons.star, size: 10, color: AppColors.accent(context)),
                                const SizedBox(width: 4),
                                Text(
                                  '${restaurant.rating.toStringAsFixed(1)} • ${restaurant.cuisine} • ${restaurant.priceRange}',
                                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: AppColors.muted(context)),
                                ),
                              ],
                            ),
                            const SizedBox(height: 2),
                            Text(
                              restaurant.neighbourhood,
                              style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600, color: AppColors.accent(context)),
                            ),
                          ],
                        ),
                      ),
                      Icon(Icons.chevron_right, size: 14, color: AppColors.muted(context)),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
