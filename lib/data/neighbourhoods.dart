import 'package:flutter/material.dart';
import '../models/destination.dart';

/// Neighbourhoods and districts of London, Ontario featured in the app.
class Neighbourhoods {
  Neighbourhoods._();

  static const all = <Destination>[
    Destination(
      name: 'Downtown London',
      region: 'London, Ontario',
      icon: Icons.location_city,
      colors: [Color(0xFFFF9540), Color(0xFFE0522A)],
    ),
    Destination(
      name: 'Old East Village',
      region: 'London, Ontario',
      icon: Icons.palette,
      colors: [Colors.purple, Colors.pink],
    ),
    Destination(
      name: 'Wortley Village',
      region: 'London, Ontario',
      icon: Icons.storefront,
      colors: [Colors.green, Colors.teal],
    ),
    Destination(
      name: 'Byron',
      region: 'London, Ontario',
      icon: Icons.park,
      colors: [Colors.lightGreen, Colors.blue],
    ),
    Destination(
      name: 'Old North',
      region: 'London, Ontario',
      icon: Icons.school,
      colors: [Colors.indigo, Colors.blue],
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
    ),
    Destination(
      name: 'White Oaks',
      region: 'London, Ontario',
      icon: Icons.shopping_cart,
      colors: [Colors.blueGrey, Colors.grey],
    ),
  ];
}
