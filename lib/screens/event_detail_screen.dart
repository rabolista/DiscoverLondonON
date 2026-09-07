import 'package:flutter/material.dart';
import '../models/event.dart';
import '../theme/colors.dart';
import '../widgets/get_directions_button.dart';

class EventDetailScreen extends StatelessWidget {
  final Event event;

  const EventDetailScreen({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background(context),
      appBar: AppBar(title: Text(event.name)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Center(
            child: Container(
              width: 110,
              height: 110,
              margin: const EdgeInsets.only(top: 16, bottom: 24),
              decoration: const BoxDecoration(color: AppColors.primary, shape: BoxShape.circle),
              child: Icon(event.icon, size: 50, color: Colors.white),
            ),
          ),
          Text(event.name, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.calendar_today, size: 15, color: AppColors.accent(context)),
              const SizedBox(width: 6),
              Text(
                event.dateLabel,
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Icon(Icons.place, size: 15, color: AppColors.accent(context)),
              const SizedBox(width: 6),
              Text(
                event.venue,
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: AppColors.muted(context)),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            event.details,
            style: TextStyle(fontSize: 15, color: AppColors.muted(context), height: 1.4),
          ),
          const SizedBox(height: 16),
          GetDirectionsButton(
            placeName: event.venue,
            address: '${event.venue}, London, ON',
          ),
        ],
      ),
    );
  }
}
