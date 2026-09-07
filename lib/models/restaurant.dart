import 'package:flutter/material.dart';

class Restaurant {
  final String name;
  final String cuisine;
  final String priceRange;
  final String neighbourhood;
  final String details;
  final IconData icon;
  final double rating;
  final String address;

  /// Representative dish photo (loaded from the network) and its attribution.
  final String? imageUrl;
  final String? imageCredit;

  const Restaurant({
    required this.name,
    required this.cuisine,
    required this.priceRange,
    required this.neighbourhood,
    required this.details,
    required this.icon,
    required this.rating,
    this.address = '',
    this.imageUrl,
    this.imageCredit,
  });
}
