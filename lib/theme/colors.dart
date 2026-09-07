import 'package:flutter/material.dart';

// London, ON is nicknamed "The Forest City" — theme uses forest greens throughout.
class AppColors {
  AppColors._();

  // Brand colours — identical in light and dark mode.
  static const primary = Color(0xFF2E7D32);
  static const primaryDark = Color(0xFF1B5E20);
  static const gradient = [Color(0xFF4C9A4C), Color(0xFF1B5E20)];
  static const _darkGradient = [Color(0xFF15361A), Color(0xFF0E110E)];
  static const avatarGradient = [Color(0xFF66BB6A), Color(0xFF1B5E20)];

  /// Header gradient — bright forest green in light mode, a deep green that
  /// fades into the dark background in dark mode.
  static List<Color> headerGradient(BuildContext context) =>
      _isDark(context) ? _darkGradient : gradient;

  // Light surfaces
  static const _lightBackground = Color(0xFFF1F4F1);
  static const _lightCard = Colors.white;
  static const _lightMuted = Color(0xFF6B7280);

  // Dark surfaces (green-tinted charcoal to keep the Forest City feel)
  static const _darkBackground = Color(0xFF0E110E);
  static const _darkCard = Color(0xFF20261F);
  static const _darkMuted = Color(0xFF9AA69A);
  static const _darkBorder = Color(0xFF313A30);

  /// Hairline border for cards in dark mode; transparent in light mode.
  static Color cardBorder(BuildContext context) =>
      _isDark(context) ? _darkBorder : Colors.transparent;

  static bool _isDark(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark;

  /// Scaffold / page background.
  static Color background(BuildContext context) =>
      _isDark(context) ? _darkBackground : _lightBackground;

  /// Raised card / tile surface that sits on top of [background].
  static Color card(BuildContext context) =>
      _isDark(context) ? _darkCard : _lightCard;

  /// Secondary / supporting text and icons.
  static Color muted(BuildContext context) =>
      _isDark(context) ? _darkMuted : _lightMuted;

  /// A brighter green for text/icons on dark backgrounds where [primary]
  /// would be too dim.
  static Color accent(BuildContext context) =>
      _isDark(context) ? const Color(0xFF7CC67F) : primary;
}
