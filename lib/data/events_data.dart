import 'package:flutter/material.dart';
import '../models/event.dart';

/// Popular annual festivals and events in London, Ontario.
///
/// Dates are the confirmed 2026 dates where known, otherwise the season the
/// event usually runs in.
class EventsData {
  EventsData._();

  static final List<Event> all = _events.toList()
    ..sort((a, b) => a.month.compareTo(b.month));

  static const _events = <Event>[
    Event(
      name: 'Canada Day Celebrations',
      dateLabel: 'July 1',
      month: 7,
      venue: 'Harris Park',
      details:
          'London marks Canada Day with an afternoon and evening of live music '
          'at Harris Park, capped by a fireworks display over the Thames River.',
      icon: Icons.celebration,
    ),
    Event(
      name: 'London Fringe Festival',
      dateLabel: 'Early June',
      month: 6,
      venue: 'Downtown venues',
      details:
          'Roughly two weeks of independent theatre, comedy, dance and visual '
          'art staged in venues across the downtown core, alongside a Fringe '
          'buskers series in the streets.',
      icon: Icons.theater_comedy,
    ),
    Event(
      name: 'TD Sunfest',
      dateLabel: 'Jul 9–12, 2026',
      month: 7,
      venue: 'Victoria Park',
      details:
          'One of Canada\'s largest free celebrations of world music, jazz and '
          'global culture, filling Victoria Park with performers, artisans and '
          'food vendors from around the world.',
      icon: Icons.public,
    ),
    Event(
      name: 'RBC Rock the Park',
      dateLabel: 'Jul 15–18, 2026',
      month: 7,
      venue: 'Harris Park',
      details:
          'Four nights of major rock, country and hip-hop headliners on a '
          'riverside stage at Harris Park — London\'s biggest ticketed music '
          'festival.',
      icon: Icons.music_note,
    ),
    Event(
      name: 'Home County Music & Art Festival',
      dateLabel: 'Jul 24–25, 2026',
      month: 7,
      venue: 'Victoria Park',
      details:
          'A free festival of Canadian folk and roots music paired with a '
          'juried fine-craft market, running in Victoria Park since 1974.',
      icon: Icons.piano,
    ),
    Event(
      name: 'London Ribfest & Craft Beer Festival',
      dateLabel: 'Jul 30 – Aug 3, 2026',
      month: 8,
      venue: 'Victoria Park',
      details:
          'Championship "ribbers" from across North America compete over the '
          'Civic Holiday long weekend, with a craft beer garden and live music '
          'in Victoria Park.',
      icon: Icons.outdoor_grill,
    ),
    Event(
      name: 'Expressions in Chalk',
      dateLabel: 'Mid-August',
      month: 8,
      venue: 'Wortley Village',
      details:
          'Artists spend a weekend turning the sidewalks of Old South into a '
          'temporary street-painting gallery, with music and a community '
          'atmosphere in Wortley Village.',
      icon: Icons.brush,
    ),
    Event(
      name: 'Western Fair',
      dateLabel: 'Sep 11–20, 2026',
      month: 9,
      venue: 'Western Fair District',
      details:
          'A 10-day fall fair with a midway, agricultural competitions, live '
          'concerts, a demolition derby and classic fair food, held annually '
          'since 1868.',
      icon: Icons.attractions,
    ),
    Event(
      name: 'Doors Open London',
      dateLabel: 'Sep 19–20, 2026',
      month: 9,
      venue: 'Sites citywide',
      details:
          'A free weekend of behind-the-scenes access to heritage buildings, '
          'landmarks and working spaces around London that are normally closed '
          'to the public.',
      icon: Icons.meeting_room,
    ),
    Event(
      name: 'Wortley Village Hallowe\'en',
      dateLabel: 'October 31',
      month: 10,
      venue: 'Wortley Village',
      details:
          'Old South\'s tree-lined streets host the city\'s biggest '
          'neighbourhood Hallowe\'en, drawing thousands of costumed '
          'trick-or-treaters and elaborate house displays.',
      icon: Icons.dark_mode,
    ),
    Event(
      name: 'London Santa Claus Parade',
      dateLabel: 'Mid-to-late November',
      month: 11,
      venue: 'Downtown core',
      details:
          'Floats, marching bands and Santa wind through downtown London in one '
          'of the oldest continuously running Santa Claus parades in Canada, '
          'dating back to 1908.',
      icon: Icons.ac_unit,
    ),
  ];
}
