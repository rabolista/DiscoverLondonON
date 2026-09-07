import 'package:flutter/material.dart';
import '../models/category.dart';

class Categories {
  Categories._();

  static const all = <AppCategory>[
    AppCategory(name: 'Art', icon: Icons.palette),
    AppCategory(name: 'Sport', icon: Icons.sports_baseball),
    AppCategory(name: 'Live Events', icon: Icons.theater_comedy),
    AppCategory(name: 'Food', icon: Icons.storefront),
    AppCategory(name: 'History', icon: Icons.account_balance),
    AppCategory(name: 'Outdoors', icon: Icons.park),
  ];
}
