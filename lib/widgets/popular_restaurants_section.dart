import 'package:flutter/material.dart';
import '../data/restaurants_data.dart';
import '../theme/colors.dart';
import '../widgets/section_header.dart';
import '../widgets/tile.dart';
import '../screens/all_restaurants_screen.dart';
import '../screens/restaurant_detail_screen.dart';

class PopularRestaurantsSection extends StatelessWidget {
  const PopularRestaurantsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final restaurants = RestaurantsData.all.take(6).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(
          title: 'Popular Places to Eat',
          onSeeAll: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => AllRestaurantsScreen(restaurants: RestaurantsData.all)),
          ),
        ),
        SizedBox(
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: [
              for (final restaurant in restaurants)
                Padding(
                  padding: const EdgeInsets.only(right: 8, bottom: 16),
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => RestaurantDetailScreen(restaurant: restaurant)),
                    ),
                    borderRadius: BorderRadius.circular(6),
                    child: SizedBox(
                      width: 240,
                      child: Tile(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(color: AppColors.primary, borderRadius: BorderRadius.circular(5)),
                              child: Icon(restaurant.icon, size: 22, color: Colors.white),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    restaurant.name,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(height: 6),
                                  Row(
                                    children: [
                                      const Icon(Icons.star, size: 12, color: AppColors.primary),
                                      const SizedBox(width: 4),
                                      Expanded(
                                        child: Text(
                                          '${restaurant.rating.toStringAsFixed(1)} • ${restaurant.cuisine} • ${restaurant.priceRange}',
                                          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 6),
                                  Text(
                                    restaurant.neighbourhood,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.grey[600]),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
