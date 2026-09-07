import 'package:flutter/material.dart';
import '../models/creator.dart';
import '../theme/colors.dart';
import '../widgets/avatar_image.dart';
import '../widgets/tile.dart';
import 'creator_detail_screen.dart';

class AllCreatorsScreen extends StatelessWidget {
  final List<Creator> creators;

  const AllCreatorsScreen({super.key, required this.creators});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(title: const Text('London ON Creators')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          for (final creator in creators)
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => CreatorDetailScreen(creator: creator)),
                ),
                borderRadius: BorderRadius.circular(6),
                child: Tile(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      AvatarImage(name: creator.name, size: 50),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(creator.name, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
                            const SizedBox(height: 2),
                            Text(
                              creator.category,
                              style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w600, color: AppColors.primary),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              creator.tagline,
                              style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                            ),
                          ],
                        ),
                      ),
                      Icon(Icons.chevron_right, size: 14, color: Colors.grey[600]),
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
