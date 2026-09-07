import 'package:flutter/material.dart';
import '../data/neighbourhoods.dart';
import '../widgets/destination_image.dart';
import '../widgets/section_header.dart';
import '../widgets/tile.dart';
import '../screens/all_destinations_screen.dart';
import '../screens/city_guide_screen.dart';

class PopularDestinationsSection extends StatelessWidget {
  const PopularDestinationsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final destinations = Neighbourhoods.all;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(
          title: 'Popular Neighbourhoods',
          onSeeAll: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => AllDestinationsScreen(destinations: destinations)),
          ),
        ),
        SizedBox(
          height: 208,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: [
              for (final destination in destinations)
                Padding(
                  padding: const EdgeInsets.only(right: 8, bottom: 16),
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => CityGuideScreen(destination: destination)),
                    ),
                    borderRadius: BorderRadius.circular(6),
                    child: SizedBox(
                      width: 125,
                      child: Tile(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(6),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(4),
                                child: SizedBox(
                                  width: 113,
                                  height: 113,
                                  child: DestinationImage(destination: destination),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12),
                              child: Text(
                                destination.name,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(12, 0, 12, 8),
                              child: Text(
                                destination.region,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.grey[600]),
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
