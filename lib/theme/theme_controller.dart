import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Holds the user's theme preference (System / Light / Dark) and persists it
/// across launches with [SharedPreferences].
class ThemeController extends ChangeNotifier {
  ThemeController._();

  static const _prefsKey = 'theme_mode';

  ThemeMode _mode = ThemeMode.system;
  ThemeMode get mode => _mode;

  /// Loads the saved preference (defaulting to [ThemeMode.system]) and returns
  /// a ready-to-use controller.
  static Future<ThemeController> load() async {
    final controller = ThemeController._();
    try {
      final prefs = await SharedPreferences.getInstance();
      final saved = prefs.getString(_prefsKey);
      controller._mode = _decode(saved);
    } catch (_) {
      // Fall back to system default if prefs are unavailable.
    }
    return controller;
  }

  Future<void> setMode(ThemeMode mode) async {
    if (mode == _mode) return;
    _mode = mode;
    notifyListeners();
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_prefsKey, mode.name);
    } catch (_) {
      // Preference is still applied for this session even if the save fails.
    }
  }

  static ThemeMode _decode(String? value) {
    switch (value) {
      case 'light':
        return ThemeMode.light;
      case 'dark':
        return ThemeMode.dark;
      default:
        return ThemeMode.system;
    }
  }
}
