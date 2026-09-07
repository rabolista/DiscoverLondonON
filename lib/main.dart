import 'package:flutter/material.dart';
import 'screens/discover_screen.dart';
import 'theme/colors.dart';

void main() {
  runApp(const DiscoverLondonApp());
}

class DiscoverLondonApp extends StatelessWidget {
  const DiscoverLondonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Discover London ON',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: AppColors.primary,
        scaffoldBackgroundColor: AppColors.background,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
        ),
      ),
      home: const DiscoverScreen(),
    );
  }
}

