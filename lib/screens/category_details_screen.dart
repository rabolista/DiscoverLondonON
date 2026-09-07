import 'package:flutter/material.dart';
import '../models/category.dart';
import '../models/place.dart';
import '../data/city_guide_data.dart';
import '../theme/colors.dart';
import '../widgets/place_row.dart';
import 'place_detail_screen.dart';

class CategoryDetailsScreen extends StatelessWidget {
  final AppCategory category;

  const CategoryDetailsScreen({super.key, required this.category});

  List<Place> get _places =>
      CityGuideData.allPlaces.where((p) => p.tags.contains(category.name)).toList();

  @override
  Widget build(BuildContext context) {
    final places = _places;

    return Scaffold(
      backgroundColor: AppColors.background(context),
      appBar: AppBar(title: Text(category.name)),
      body: places.isEmpty
          ? Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(category.icon, size: 48, color: AppColors.accent(context).withValues(alpha: 0.5)),
                  const SizedBox(height: 16),
                  Text(
                    'No places found for ${category.name} yet.',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: AppColors.muted(context)),
                  ),
                ],
              ),
            )
          : ListView(
              padding: const EdgeInsets.all(16),
              children: [
                for (final place in places)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: PlaceRow(
                      place: place,
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => PlaceDetailScreen(place: place)),
                      ),
                    ),
                  ),
              ],
            ),
    );
  }
}
