import 'package:flutter/material.dart';
import '../models/destination.dart';
import '../data/city_guide_data.dart';
import '../theme/colors.dart';
import '../widgets/destination_image.dart';
import '../widgets/place_row.dart';
import 'place_detail_screen.dart';

class CityGuideScreen extends StatelessWidget {
  final Destination destination;

  const CityGuideScreen({super.key, required this.destination});

  @override
  Widget build(BuildContext context) {
    final sections = CityGuideData.sectionsFor(destination.name);

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(title: Text(destination.name)),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Stack(
            children: [
              SizedBox(
                height: 220,
                width: double.infinity,
                child: DestinationImage(destination: destination),
              ),
              Positioned(
                left: 16,
                right: 16,
                bottom: 16,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      destination.name,
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      destination.region,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          if (sections.isEmpty)
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'More places to visit in ${destination.name} are coming soon.',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.grey[600]),
              ),
            )
          else
            for (final section in sections)
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                      child: Text(
                        section.title,
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        children: [
                          for (final place in section.places)
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
                    ),
                  ],
                ),
              ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
