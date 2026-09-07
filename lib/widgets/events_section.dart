import 'package:flutter/material.dart';
import '../data/events_data.dart';
import '../screens/all_events_screen.dart';
import '../screens/event_detail_screen.dart';
import '../widgets/event_card.dart';
import '../widgets/section_header.dart';

class EventsSection extends StatelessWidget {
  const EventsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final events = EventsData.all;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(
          title: 'Popular London Events',
          onSeeAll: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const AllEventsScreen()),
          ),
        ),
        SizedBox(
          height: 132,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: [
              for (final event in events)
                Padding(
                  padding: const EdgeInsets.only(right: 8, bottom: 16),
                  child: SizedBox(
                    width: 230,
                    child: EventCard(
                      event: event,
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => EventDetailScreen(event: event)),
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
