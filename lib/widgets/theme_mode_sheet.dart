import 'package:flutter/material.dart';
import '../theme/colors.dart';
import '../theme/theme_controller.dart';

/// Bottom sheet letting the user pick System / Light / Dark appearance.
class ThemeModeSheet extends StatelessWidget {
  final ThemeController controller;

  const ThemeModeSheet({super.key, required this.controller});

  static Future<void> show(BuildContext context, ThemeController controller) {
    return showModalBottomSheet(
      context: context,
      showDragHandle: true,
      builder: (_) => ThemeModeSheet(controller: controller),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 0, 8, 12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 4, 16, 8),
              child: Text(
                'Appearance',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: AppColors.muted(context),
                ),
              ),
            ),
            _option(context, ThemeMode.system, 'System default', Icons.brightness_auto_outlined),
            _option(context, ThemeMode.light, 'Light', Icons.light_mode_outlined),
            _option(context, ThemeMode.dark, 'Dark', Icons.dark_mode_outlined),
          ],
        ),
      ),
    );
  }

  Widget _option(BuildContext context, ThemeMode mode, String label, IconData icon) {
    final selected = controller.mode == mode;
    return ListTile(
      leading: Icon(icon, color: selected ? AppColors.accent(context) : null),
      title: Text(
        label,
        style: TextStyle(
          fontWeight: selected ? FontWeight.w700 : FontWeight.w500,
          color: selected ? AppColors.accent(context) : null,
        ),
      ),
      trailing: selected ? Icon(Icons.check, color: AppColors.accent(context)) : null,
      onTap: () {
        controller.setMode(mode);
        Navigator.pop(context);
      },
    );
  }
}
