import 'package:flutter/material.dart';

class Destination {
  final String name;
  final String region;
  final IconData icon;
  final List<Color> colors;
  final String? imageUrl;
  final String? imageCredit;

  const Destination({
    required this.name,
    required this.region,
    required this.icon,
    required this.colors,
    this.imageUrl,
    this.imageCredit,
  });
}
