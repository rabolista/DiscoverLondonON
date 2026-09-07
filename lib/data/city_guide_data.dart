import 'package:flutter/material.dart';
import '../models/place.dart';
import '../models/place_section.dart';

/// Real, well-established London, Ontario landmarks organized by neighbourhood.
class CityGuideData {
  CityGuideData._();

  static List<PlaceSection> sectionsFor(String neighbourhood) {
    switch (neighbourhood) {
      case 'Downtown London':
        return downtownLondon;
      case 'Old East Village':
        return oldEastVillage;
      case 'Wortley Village':
        return wortleyVillage;
      case 'Byron':
        return byron;
      case 'Old North':
        return oldNorth;
      case 'North London':
        return northLondon;
      case 'East London':
        return eastLondon;
      case 'White Oaks':
        return whiteOaks;
      default:
        return const [];
    }
  }

  static List<Place> get allPlaces =>
      [
        downtownLondon,
        oldEastVillage,
        wortleyVillage,
        byron,
        oldNorth,
        northLondon,
        eastLondon,
        whiteOaks,
        runningGroups,
      ].expand((sections) => sections).expand((s) => s.places).toList();

  /// Well-known community running groups and run clubs in London, Ontario.
  static const runningGroups = <PlaceSection>[
    PlaceSection(title: 'Run Clubs & Groups', places: [
      Place(
        name: 'Soul Runners Run Club',
        category: 'Run Club',
        details:
            'A welcoming London run club with coached programs for every level, from learning to run your first 5K to structured training. Drop-in group runs take place through the week at Edgevalley Park, Medway Road in Arva, and the North London Athletic Fields.',
        icon: Icons.directions_run,
        address: 'Edgevalley Park, 269 Edgevalley Rd, London, ON',
        tags: ['Running Groups', 'Sport'],
      ),
      Place(
        name: 'London Pacers Running Club',
        category: 'Running Club',
        details:
            'A not-for-profit club founded in 1972 with around 200 members, promoting running, racewalking and track for all ages and abilities. The Pacers host the annual Thanksgiving Day cross-country race at Springbank Park and a summer Mile Night on the track.',
        icon: Icons.groups,
        address: 'Springbank Park, London, ON',
        tags: ['Running Groups', 'Sport'],
      ),
      Place(
        name: 'BackRoads Run Club',
        category: 'Run Club',
        details:
            'A free social run out of BackRoads Brews + Shoes every Thursday at 6 PM, with 5K and 10K routes and every pace welcome back at the taproom afterward. The shop also runs a seasonal BackRoads Running Series.',
        icon: Icons.directions_run,
        address: '1295 Riverbend Rd, London, ON N6K 0G2',
        tags: ['Running Groups', 'Sport'],
      ),
      Place(
        name: "Runners' Choice Saturday Run",
        category: 'Group Run',
        details:
            'A friendly Saturday morning group run at 8:30 AM along the Thames River path system, meeting at the Runners\' Choice store on Springbank Drive. Staff are on hand for advice on training, shoes and apparel.',
        icon: Icons.storefront,
        address: '520 Springbank Dr, London, ON',
        tags: ['Running Groups', 'Sport'],
      ),
      Place(
        name: 'Running Room Run Club',
        category: 'Run Club',
        details:
            'The Running Room\'s free run and walk club meets from the downtown London store, with regular group runs and learn-to-run and race training clinics for 5K through marathon distances.',
        icon: Icons.directions_run,
        address: '620 Richmond St, London, ON N6A 5J9',
        tags: ['Running Groups', 'Sport'],
      ),
      Place(
        name: 'Forest City Road Races',
        category: 'Running Community',
        details:
            'A long-running non-profit event and community of London runners supporting the Thames Valley Children\'s Centre, with an Athletics Ontario-certified spring race weekend and group training runs in the lead-up.',
        icon: Icons.emoji_events,
        address: 'London, ON',
        tags: ['Running Groups', 'Sport'],
      ),
    ]),
  ];

  static const downtownLondon = <PlaceSection>[
    PlaceSection(title: 'Top Attractions', places: [
      Place(
        name: 'Budweiser Gardens',
        category: 'Arena',
        details:
            'Opened in 2002, Budweiser Gardens is downtown London\'s premier arena, seating over 9,000 for concerts and major events. It is the longtime home of the London Knights of the Ontario Hockey League, one of the most successful franchises in junior hockey.',
        icon: Icons.stadium,
        address: '99 Dundas St, London, ON N6A 6E3',
        tags: ['Sport', 'Live Events'],
      ),
      Place(
        name: 'Covent Garden Market',
        category: 'Market',
        details:
            'A public market has stood on this downtown site since 1845, making Covent Garden Market one of the oldest continuously operating markets in Canada. Today\'s building houses independent food vendors, a Saturday farmers\' market, and regular live music in the atrium.',
        icon: Icons.storefront,
        address: '130 King St, London, ON N6A 1C2',
        tags: ['Food'],
      ),
      Place(
        name: 'Museum London',
        category: 'Museum',
        details:
            'Museum London sits at the forks of the Thames River, pairing a regional art collection with artifacts tracing the city\'s history from Indigenous settlement through to today. Rotating exhibitions showcase both historical and contemporary Canadian artists.',
        icon: Icons.museum,
        address: '421 Ridout St N, London, ON N6A 5H4',
        tags: ['Art', 'History'],
      ),
      Place(
        name: 'Eldon House',
        category: 'Historic Site',
        details:
            'Built in 1834 for the Harris family, Eldon House is the oldest surviving residence in London. It operates today as a museum, furnished largely with the original family\'s possessions and set in gardens overlooking the Thames.',
        icon: Icons.house,
        address: '481 Ridout St N, London, ON N6A 2P4',
        tags: ['History'],
      ),
      Place(
        name: 'Grand Theatre',
        category: 'Arts & Culture',
        details:
            'The Grand Theatre has staged performances since 1901 and remains downtown London\'s home for professional theatre, presenting a season of plays and musicals in a beautifully restored heritage building.',
        icon: Icons.theater_comedy,
        address: '471 Richmond St, London, ON N6A 3E4',
        tags: ['Art', 'Live Events'],
      ),
      Place(
        name: 'Victoria Park',
        category: 'Park',
        details:
            'London\'s central downtown park has hosted community life since the 19th century, anchored by a war memorial cenotaph and a bandshell. It comes alive each summer with the Home County Music & Art Festival and Sunfest.',
        icon: Icons.park,
        address: 'Central Ave & Wellington St, London, ON',
        tags: ['Outdoors', 'Live Events'],
      ),
      Place(
        name: 'Banting House National Historic Site',
        category: 'Historic Site',
        details:
            'Known as "the birthplace of insulin," this modest house is where Sir Frederick Banting was living in 1920 when the idea that led to the discovery of insulin came to him in the night. A flame burns on the front lawn in honour of people living with diabetes.',
        icon: Icons.science,
        address: '442 Adelaide St N, London, ON N6B 3H3',
        tags: ['History'],
      ),
      Place(
        name: 'Middlesex County Building',
        category: 'Historic Site',
        details:
            'This castle-like Gothic Revival courthouse was completed in 1831 and is still in use by Middlesex County today, making it one of the oldest public buildings in continuous use in Ontario.',
        icon: Icons.account_balance,
        address: '399 Ridout St N, London, ON',
        tags: ['History'],
      ),
    ]),
  ];

  static const oldEastVillage = <PlaceSection>[
    PlaceSection(title: 'Neighbourhood Highlights', places: [
      Place(
        name: 'Aeolian Hall',
        category: 'Arts & Culture',
        details:
            'Built in 1884 and lovingly restored, Aeolian Hall is an intimate concert venue prized for its acoustics, hosting folk, jazz, and classical performances year-round in one of London\'s oldest neighbourhoods.',
        icon: Icons.music_note,
        address: '795 Dundas St, London, ON N5W 2Z8',
        tags: ['Art', 'Live Events'],
      ),
      Place(
        name: "Old East Village Farmers' Market",
        category: 'Market',
        details:
            'A weekly community market along Dundas Street featuring local produce, baked goods, and crafts, reflecting the ongoing revitalization of one of London\'s founding neighbourhoods.',
        icon: Icons.storefront,
        address: 'Dundas St, London, ON',
        tags: ['Food'],
      ),
    ]),
  ];

  static const wortleyVillage = <PlaceSection>[
    PlaceSection(title: 'Neighbourhood Highlights', places: [
      Place(
        name: 'Blackfriars Bridge',
        category: 'Landmark',
        details:
            'This wrought-iron bowstring truss bridge was built in 1875 and is one of the oldest of its kind still carrying traffic in North America, linking Wortley Village to downtown across the Thames River.',
        icon: Icons.architecture,
        address: 'Blackfriars St & Ridout St N, London, ON',
        tags: ['History'],
      ),
      Place(
        name: 'Labatt Memorial Park',
        category: 'Sports Venue',
        details:
            'Recognized by Guinness World Records as the oldest continually used baseball grounds in the world, with games played on this site since 1877. It remains home to the London Majors of the Intercounty Baseball League.',
        icon: Icons.sports_baseball,
        address: '25 Wilson Ave, London, ON N6H 1X7',
        tags: ['Sport', 'History'],
      ),
      Place(
        name: 'Wortley Village',
        category: 'Shopping District',
        details:
            'A walkable historic shopping strip in Old South known for independent boutiques, cafés and patios, and for one of the city\'s liveliest Hallowe\'en celebrations.',
        icon: Icons.storefront,
        address: 'Wortley Rd, London, ON',
      ),
    ]),
  ];

  static const byron = <PlaceSection>[
    PlaceSection(title: 'Parks & Recreation', places: [
      Place(
        name: 'Springbank Park',
        category: 'Park',
        details:
            'London\'s largest park stretches along the Thames River with formal gardens, playgrounds, splash pads and paved trails, making it a favourite for picnics and cycling.',
        icon: Icons.park,
        address: 'Springbank Dr, London, ON',
        tags: ['Outdoors'],
      ),
      Place(
        name: 'Storybook Gardens',
        category: 'Attraction',
        details:
            'A family theme park inside Springbank Park with storybook-themed play structures, a splash pad, a small zoo, and seasonal rides for younger children.',
        icon: Icons.child_friendly,
        address: '199 Storybook Ln, London, ON N6K 3P2',
        tags: ['Outdoors'],
      ),
      Place(
        name: 'Guy Lombardo Music Centre',
        category: 'Arts & Culture',
        details:
            'Gardens and a small museum in Springbank Park honouring London-born bandleader Guy Lombardo and his orchestra, the Royal Canadians.',
        icon: Icons.music_note,
        address: 'Springbank Park, London, ON',
        tags: ['Art', 'History'],
      ),
      Place(
        name: 'Thames Valley Parkway',
        category: 'Outdoors',
        details:
            'A multi-use paved trail network following the Thames River through the city, popular with cyclists and runners and linking many of London\'s parks.',
        icon: Icons.directions_bike,
        tags: ['Outdoors', 'Sport'],
      ),
    ]),
  ];

  static const oldNorth = <PlaceSection>[
    PlaceSection(title: 'Neighbourhood Highlights', places: [
      Place(
        name: 'Western University',
        category: 'Landmark',
        details:
            'Founded in 1878, Western is one of Canada\'s leading research universities, known for its collegiate-Gothic architecture, including the landmark University College building.',
        icon: Icons.school,
        address: '1151 Richmond St, London, ON N6A 3K7',
        tags: ['History'],
      ),
      Place(
        name: 'TD Stadium',
        category: 'Sports Venue',
        details:
            'Home field of the Western Mustangs football team, hosting U Sports games on the university campus.',
        icon: Icons.stadium,
        address: '1490 Western Rd, London, ON',
        tags: ['Sport'],
      ),
    ]),
  ];

  static const northLondon = <PlaceSection>[
    PlaceSection(title: 'Neighbourhood Highlights', places: [
      Place(
        name: 'Masonville Place',
        category: 'Shopping',
        details:
            'North London\'s major enclosed shopping centre, anchored by several department stores and dozens of specialty shops.',
        icon: Icons.shopping_bag,
        address: '1680 Richmond St, London, ON N6G 3Y9',
      ),
      Place(
        name: 'Museum of Ontario Archaeology',
        category: 'Museum',
        details:
            'Adjacent to the Lawson site, a National Historic Site containing the reconstructed remains of a 500-year-old Neutral Iroquoian village, this museum explores 11,000 years of Indigenous history in the region.',
        icon: Icons.museum,
        address: '1600 Attawandaron Rd, London, ON N6G 3M6',
        tags: ['History', 'Art'],
      ),
    ]),
  ];

  static const eastLondon = <PlaceSection>[
    PlaceSection(title: 'Fanshawe Area', places: [
      Place(
        name: 'Fanshawe Conservation Area',
        category: 'Outdoors',
        details:
            'A reservoir and conservation area with a sandy beach, campground, trails, and boat rentals along Fanshawe Lake, a popular summer escape on the city\'s northeast edge.',
        icon: Icons.forest,
        address: '1424 Clarke Rd, London, ON N5V 5B9',
        tags: ['Outdoors'],
      ),
      Place(
        name: 'Fanshawe Pioneer Village',
        category: 'Historic Site',
        details:
            'A living-history museum of more than 30 relocated 19th-century buildings recreating rural southwestern Ontario life, with costumed interpreters and seasonal special events.',
        icon: Icons.cottage,
        address: '2609 Fanshawe Park Rd E, London, ON N5X 4A1',
        tags: ['History'],
      ),
      Place(
        name: 'Fanshawe College',
        category: 'Landmark',
        details:
            'One of Ontario\'s largest colleges, offering career-focused diploma and degree programs to tens of thousands of students.',
        icon: Icons.school,
        address: '1001 Fanshawe College Blvd, London, ON N5Y 5R6',
      ),
    ]),
  ];

  static const whiteOaks = <PlaceSection>[
    PlaceSection(title: 'Neighbourhood Highlights', places: [
      Place(
        name: 'White Oaks Mall',
        category: 'Shopping',
        details:
            'South London\'s largest shopping centre, home to a wide mix of retail, dining, and services.',
        icon: Icons.shopping_bag,
        address: '1105 Wellington Rd, London, ON N6E 1V4',
      ),
    ]),
  ];
}
