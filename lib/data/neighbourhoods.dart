import 'package:flutter/material.dart';
import '../models/destination.dart';

/// Neighbourhoods and districts of London, Ontario featured in the app.
///
/// Photos are hotlinked from Wikimedia Commons at display size and cached on
/// device; credits are shown on each neighbourhood's hero image.
class Neighbourhoods {
  Neighbourhoods._();

  static const all = <Destination>[
    Destination(
      name: 'Downtown London',
      region: 'London, Ontario',
      icon: Icons.location_city,
      colors: [Color(0xFFFF9540), Color(0xFFE0522A)],
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/London_Ontario_downtown.jpg/960px-London_Ontario_downtown.jpg',
      imageCredit: 'Photo: Adam Bishop (CC BY-SA 4.0)',
    ),
    Destination(
      name: 'Old East Village',
      region: 'London, Ontario',
      icon: Icons.palette,
      colors: [Colors.purple, Colors.pink],
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/Aeolian_Hall%2C_London_ON.JPG/960px-Aeolian_Hall%2C_London_ON.JPG',
      imageCredit: 'Photo: SimonP (CC BY-SA 3.0)',
    ),
    Destination(
      name: 'Wortley Village',
      region: 'London, Ontario',
      icon: Icons.storefront,
      colors: [Colors.green, Colors.teal],
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/Blackfriars_Street_Bridge%2C_London%2C_Ontario.jpg/960px-Blackfriars_Street_Bridge%2C_London%2C_Ontario.jpg',
      imageCredit: 'Photo: Gogerr (CC BY 4.0)',
    ),
    Destination(
      name: 'Byron',
      region: 'London, Ontario',
      icon: Icons.park,
      colors: [Colors.lightGreen, Colors.blue],
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/0/08/Thames_River_Springbank_Park.jpg/960px-Thames_River_Springbank_Park.jpg',
      imageCredit: 'Photo: abdallahh (CC BY 2.0)',
    ),
    Destination(
      name: 'Old North',
      region: 'London, Ontario',
      icon: Icons.school,
      colors: [Colors.indigo, Colors.blue],
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/b/be/University_College_at_the_University_of_Western_Ontario_in_London%2C_Ontario.jpg/960px-University_College_at_the_University_of_Western_Ontario_in_London%2C_Ontario.jpg',
      imageCredit: 'Photo: Emily CA (CC BY-SA 4.0)',
    ),
    Destination(
      name: 'North London',
      region: 'London, Ontario',
      icon: Icons.shopping_bag,
      colors: [Colors.blue, Colors.cyan],
    ),
    Destination(
      name: 'East London',
      region: 'London, Ontario',
      icon: Icons.forest,
      colors: [Colors.teal, Colors.green],
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Sunrise_-_Fanshawe_Lake_%2821343226149%29.jpg/960px-Sunrise_-_Fanshawe_Lake_%2821343226149%29.jpg',
      imageCredit: 'Photo: WabbitWanderer (CC BY-SA 2.0)',
    ),
    Destination(
      name: 'White Oaks',
      region: 'London, Ontario',
      icon: Icons.shopping_cart,
      colors: [Colors.blueGrey, Colors.grey],
    ),
  ];
}
