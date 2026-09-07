import 'package:flutter/material.dart';
import '../data/creators.dart';
import '../widgets/avatar_image.dart';
import '../widgets/section_header.dart';
import '../screens/all_creators_screen.dart';
import '../screens/creator_detail_screen.dart';

class TrendingCreatorsSection extends StatelessWidget {
  const TrendingCreatorsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final creators = Creators.all;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(
          title: 'London Creators to Follow',
          onSeeAll: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => AllCreatorsScreen(creators: creators)),
          ),
        ),
        SizedBox(
          height: 156,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: [
              for (final creator in creators)
                Padding(
                  padding: const EdgeInsets.only(right: 12, bottom: 16),
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => CreatorDetailScreen(creator: creator)),
                    ),
                    child: SizedBox(
                      width: 80,
                      child: Column(
                        children: [
                          AvatarImage(name: creator.name, size: 60),
                          const SizedBox(height: 6),
                          Text(
                            creator.name,
                            textAlign: TextAlign.center,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            creator.category,
                            textAlign: TextAlign.center,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600, color: Colors.grey[600]),
                          ),
                        ],
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
