import 'package:flutter/material.dart';

class Place {
  final String name;
  final String category;
  final String details;
  final IconData icon;
  final String address;
  // Names of the AppCategory entries this place should appear under.
  final List<String> tags;
  // Optional real photo (loaded from the network) and its attribution.
  final String? imageUrl;
  final String? imageCredit;

  const Place({
    required this.name,
    required this.category,
    required this.details,
    required this.icon,
    this.address = '',
    this.tags = const [],
    this.imageUrl,
    this.imageCredit,
  });
}
