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
        groceries,
      ].expand((sections) => sections).expand((s) => s.places).toList();

  /// Grocery stores and international food markets around London, Ontario.
  static const groceries = <PlaceSection>[
    PlaceSection(title: 'Grocery & Food Markets', places: [
      Place(
        name: 'Costco Wholesale',
        category: 'Warehouse Club',
        details:
            'Members-only warehouse club with bulk groceries, fresh produce and '
            'meat, a bakery, and a members\' gas bar. London\'s Costco sits just '
            'off the 401 in the south end.',
        icon: Icons.warehouse,
        address: '4313 Wellington Rd S, London, ON N6E 2Z8',
        tags: ['Groceries'],
      ),
      Place(
        name: 'Walmart Supercentre',
        category: 'Supercentre',
        details:
            'Full grocery department alongside general merchandise. The White '
            'Oaks Mall Supercentre in south London is open late seven days a '
            'week; there is a second Supercentre at Northland on Fanshawe Park '
            'Road West.',
        icon: Icons.storefront,
        address: 'White Oaks Mall, 1105 Wellington Rd S, London, ON N6E 1V4',
        tags: ['Groceries'],
      ),
      Place(
        name: "Brent & Jennie's No Frills",
        category: 'Discount Grocery',
        details:
            'No-frills discount supermarket on Hamilton Road in Old East London, '
            'with a broad selection of world-foods aisles reflecting the '
            'neighbourhood.',
        icon: Icons.shopping_basket,
        address: '960 Hamilton Rd, London, ON N5W 1A3',
        tags: ['Groceries'],
      ),
      Place(
        name: 'Dollarama (Citi Plaza)',
        category: 'Dollar Store',
        details:
            'Downtown Dollarama inside Citi Plaza for cheap pantry staples, '
            'snacks, drinks and household basics. Dozens more Dollarama stores '
            'are spread across the city, including White Oaks Mall.',
        icon: Icons.store,
        address: '355 Wellington St, London, ON',
        tags: ['Groceries'],
      ),
      Place(
        name: 'T&T Supermarket',
        category: 'Asian Supermarket',
        details:
            'Canada\'s largest Asian grocery chain, with a big London store at '
            'Oxford & Wonderland. Fresh Chinese and pan-Asian produce, a live '
            'seafood counter, hot-food kitchen, bakery and a huge dry-goods '
            'selection.',
        icon: Icons.set_meal,
        address: '530 Oxford St W, London, ON N6H 1T6',
        tags: ['Groceries', 'Food'],
      ),
      Place(
        name: 'Superking Supermarket',
        category: 'International Grocery',
        details:
            'A large international supermarket on Wonderland Road South stocking '
            'Middle Eastern, South Asian, African, Caribbean and East Asian '
            'foods, with a halal butcher and a bakery. A second location is at '
            'Westmount Shopping Centre.',
        icon: Icons.local_grocery_store,
        address: '785 Wonderland Rd S, London, ON N6K 1M6',
        tags: ['Groceries', 'Food'],
      ),
      Place(
        name: 'London-Asian Foods',
        category: 'Filipino & Asian Grocery',
        details:
            'A Filipino-owned grocery on Huron Street carrying Filipino pantry '
            'staples, frozen goods, snacks and baked goods (pandesal, ensaymada) '
            'along with wider Southeast Asian ingredients.',
        icon: Icons.rice_bowl,
        address: '1332 Huron St, London, ON',
        tags: ['Groceries', 'Food'],
      ),
    ]),
  ];

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
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/1/16/Budweiser_Gardens_-_Interior_2015.JPG/960px-Budweiser_Gardens_-_Interior_2015.JPG',
        imageCredit: 'Photo: Jfvoll (CC BY-SA 4.0)',
      ),
      Place(
        name: 'Covent Garden Market',
        category: 'Market',
        details:
            'A public market has stood on this downtown site since 1845, making Covent Garden Market one of the oldest continuously operating markets in Canada. Today\'s building houses independent food vendors, a Saturday farmers\' market, and regular live music in the atrium.',
        icon: Icons.storefront,
        address: '130 King St, London, ON N6A 1C2',
        tags: ['Food'],
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e3/Covent_Garden_Market%2C_London%2C_Ontario%2C_2026-07-31_01.jpg/960px-Covent_Garden_Market%2C_London%2C_Ontario%2C_2026-07-31_01.jpg',
        imageCredit: 'Photo: Chris Woodrich (CC BY-SA 4.0)',
      ),
      Place(
        name: 'Museum London',
        category: 'Museum',
        details:
            'Museum London sits at the forks of the Thames River, pairing a regional art collection with artifacts tracing the city\'s history from Indigenous settlement through to today. Rotating exhibitions showcase both historical and contemporary Canadian artists.',
        icon: Icons.museum,
        address: '421 Ridout St N, London, ON N6A 5H4',
        tags: ['Art', 'History'],
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1d/Museum_London%2C_London%2C_Ontario_%2821202390374%29.jpg/960px-Museum_London%2C_London%2C_Ontario_%2821202390374%29.jpg',
        imageCredit: 'Photo: Ken Lund (CC BY-SA 2.0)',
      ),
      Place(
        name: 'Eldon House',
        category: 'Historic Site',
        details:
            'Built in 1834 for the Harris family, Eldon House is the oldest surviving residence in London. It operates today as a museum, furnished largely with the original family\'s possessions and set in gardens overlooking the Thames.',
        icon: Icons.house,
        address: '481 Ridout St N, London, ON N6A 2P4',
        tags: ['History'],
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/Eldon_House%2C_London%2C_Ontario_%2821834783621%29.jpg/960px-Eldon_House%2C_London%2C_Ontario_%2821834783621%29.jpg',
        imageCredit: 'Photo: Ken Lund (CC BY-SA 2.0)',
      ),
      Place(
        name: 'Grand Theatre',
        category: 'Arts & Culture',
        details:
            'The Grand Theatre has staged performances since 1901 and remains downtown London\'s home for professional theatre, presenting a season of plays and musicals in a beautifully restored heritage building.',
        icon: Icons.theater_comedy,
        address: '471 Richmond St, London, ON N6A 3E4',
        tags: ['Art', 'Live Events'],
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Grand_Theatre%2C_London%2C_Ontario%2C_2026-08-01.jpg/960px-Grand_Theatre%2C_London%2C_Ontario%2C_2026-08-01.jpg',
        imageCredit: 'Photo: Chris Woodrich (CC BY-SA 4.0)',
      ),
      Place(
        name: 'Victoria Park',
        category: 'Park',
        details:
            'London\'s central downtown park has hosted community life since the 19th century, anchored by a war memorial cenotaph and a bandshell. It comes alive each summer with the Home County Music & Art Festival and Sunfest.',
        icon: Icons.park,
        address: 'Central Ave & Wellington St, London, ON',
        tags: ['Outdoors', 'Live Events'],
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Victoria_Park_bandshell%2C_London_Ontario01.jpg/960px-Victoria_Park_bandshell%2C_London_Ontario01.jpg',
        imageCredit: 'Photo: WayneRay (public domain)',
      ),
      Place(
        name: 'Banting House National Historic Site',
        category: 'Historic Site',
        details:
            'Known as "the birthplace of insulin," this modest house is where Sir Frederick Banting was living in 1920 when the idea that led to the discovery of insulin came to him in the night. A flame burns on the front lawn in honour of people living with diabetes.',
        icon: Icons.science,
        address: '442 Adelaide St N, London, ON N6B 3H3',
        tags: ['History'],
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Banting_House_London_Ontario.jpg/960px-Banting_House_London_Ontario.jpg',
        imageCredit: 'Photo: Adam Bishop (CC BY-SA 4.0)',
      ),
      Place(
        name: 'Middlesex County Building',
        category: 'Historic Site',
        details:
            'This castle-like Gothic Revival courthouse was completed in 1831 and is still in use by Middlesex County today, making it one of the oldest public buildings in continuous use in Ontario.',
        icon: Icons.account_balance,
        address: '399 Ridout St N, London, ON',
        tags: ['History'],
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/Middlesex_County_Courthouse.jpg/960px-Middlesex_County_Courthouse.jpg',
        imageCredit: 'Photo: Alexandra Gorska (CC BY-SA 3.0)',
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
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/Aeolian_Hall%2C_London_ON.JPG/960px-Aeolian_Hall%2C_London_ON.JPG',
        imageCredit: 'Photo: SimonP (CC BY-SA 3.0)',
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
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/Blackfriars_Street_Bridge%2C_London%2C_Ontario.jpg/960px-Blackfriars_Street_Bridge%2C_London%2C_Ontario.jpg',
        imageCredit: 'Photo: Gogerr (CC BY 4.0)',
      ),
      Place(
        name: 'Labatt Memorial Park',
        category: 'Sports Venue',
        details:
            'Recognized by Guinness World Records as the oldest continually used baseball grounds in the world, with games played on this site since 1877. It remains home to the London Majors of the Intercounty Baseball League.',
        icon: Icons.sports_baseball,
        address: '25 Wilson Ave, London, ON N6H 1X7',
        tags: ['Sport', 'History'],
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e9/Labatt_Memorial_Park_-_London%2C_ON.jpg/960px-Labatt_Memorial_Park_-_London%2C_ON.jpg',
        imageCredit: 'Photo: Jfvoll (CC BY-SA 4.0)',
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
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d6/Springbank_Park%2C_London%2C_Ontario_%2851939557167%29.jpg/960px-Springbank_Park%2C_London%2C_Ontario_%2851939557167%29.jpg',
        imageCredit: 'Photo: Dennis Sparks (CC BY-SA 2.0)',
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
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/Forks_of_the_Thames.jpg/960px-Forks_of_the_Thames.jpg',
        imageCredit: 'Photo: Gogerr (CC BY-SA 4.0)',
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
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/Fall_ColoursatWestern.jpg/960px-Fall_ColoursatWestern.jpg',
        imageCredit: 'Photo: D. Keddy (CC BY-SA 3.0)',
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
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/MusOntarArchae_4618a.jpg/960px-MusOntarArchae_4618a.jpg',
        imageCredit: 'Photo: QuartierLatin1968 (CC BY-SA 3.0)',
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
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/Sunrise_-_Fanshawe_Lake_%2821538701481%29.jpg/960px-Sunrise_-_Fanshawe_Lake_%2821538701481%29.jpg',
        imageCredit: 'Photo: WabbitWanderer (CC BY-SA 2.0)',
      ),
      Place(
        name: 'Fanshawe Pioneer Village',
        category: 'Historic Site',
        details:
            'A living-history museum of more than 30 relocated 19th-century buildings recreating rural southwestern Ontario life, with costumed interpreters and seasonal special events.',
        icon: Icons.cottage,
        address: '2609 Fanshawe Park Rd E, London, ON N5X 4A1',
        tags: ['History'],
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Fanshawe_Pioneer_Village_buildings.jpg/960px-Fanshawe_Pioneer_Village_buildings.jpg',
        imageCredit: 'Photo: Adam Bishop (CC BY-SA 4.0)',
      ),
      Place(
        name: 'Fanshawe College',
        category: 'Landmark',
        details:
            'One of Ontario\'s largest colleges, offering career-focused diploma and degree programs to tens of thousands of students.',
        icon: Icons.school,
        address: '1001 Fanshawe College Blvd, London, ON N5Y 5R6',
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Fanshawe_College%2C_London%2C_Ontario%2C_2026-08-01_32.jpg/960px-Fanshawe_College%2C_London%2C_Ontario%2C_2026-08-01_32.jpg',
        imageCredit: 'Photo: Chris Woodrich (CC BY-SA 4.0)',
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
