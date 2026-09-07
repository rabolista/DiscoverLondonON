import 'package:flutter/material.dart';
import 'screens/discover_screen.dart';
import 'theme/app_theme.dart';
import 'theme/theme_controller.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final themeController = await ThemeController.load();
  runApp(DiscoverLondonApp(themeController: themeController));
}

class DiscoverLondonApp extends StatelessWidget {
  final ThemeController themeController;

  const DiscoverLondonApp({super.key, required this.themeController});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: themeController,
      builder: (context, _) {
        return MaterialApp(
          title: 'London ON',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.light,
          darkTheme: AppTheme.dark,
          themeMode: themeController.mode,
          home: DiscoverScreen(themeController: themeController),
        );
      },
    );
  }
}
