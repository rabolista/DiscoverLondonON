import 'package:flutter/material.dart';
import '../data/events_data.dart';
import '../theme/colors.dart';
import '../widgets/event_card.dart';
import 'event_detail_screen.dart';

class AllEventsScreen extends StatelessWidget {
  const AllEventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final events = EventsData.all;

    return Scaffold(
      backgroundColor: AppColors.background(context),
      appBar: AppBar(title: const Text('London ON Events')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          for (final event in events)
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: EventCard(
                event: event,
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => EventDetailScreen(event: event)),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
