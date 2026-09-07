import 'package:flutter/material.dart';

/// A recurring London, Ontario festival or event.
class Event {
  final String name;

  /// Human-readable date, e.g. "Jul 9–12, 2026" or "Late November".
  final String dateLabel;

  /// Month the event usually falls in (1–12), used for chronological ordering.
  final int month;

  final String venue;
  final String details;
  final IconData icon;

  const Event({
    required this.name,
    required this.dateLabel,
    required this.month,
    required this.venue,
    required this.details,
    required this.icon,
  });
}
