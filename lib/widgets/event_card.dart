import 'package:flutter/material.dart';
import '../models/event.dart';
import '../theme/colors.dart';
import '../widgets/tile.dart';

/// Card for a London event: date, name and venue.
class EventCard extends StatelessWidget {
  final Event event;
  final VoidCallback onTap;

  const EventCard({super.key, required this.event, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(6),
      child: Tile(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Icon(Icons.calendar_today, size: 13, color: AppColors.accent(context)),
                const SizedBox(width: 6),
                Expanded(
                  child: Text(
                    event.dateLabel,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: AppColors.accent(context),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              event.name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700, height: 1.2),
            ),
            const SizedBox(height: 6),
            Row(
              children: [
                Icon(Icons.place, size: 12, color: AppColors.muted(context)),
                const SizedBox(width: 4),
                Expanded(
                  child: Text(
                    event.venue,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 12, color: AppColors.muted(context)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
