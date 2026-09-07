import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../theme/colors.dart';
import '../theme/theme_controller.dart';
import '../widgets/categories_row.dart';
import '../widgets/events_section.dart';
import '../widgets/holidays_section.dart';
import '../widgets/popular_destinations_section.dart';
import '../widgets/popular_restaurants_section.dart';
import '../widgets/theme_mode_sheet.dart';
import '../widgets/trending_creators_section.dart';
import 'about_screen.dart';
import 'search_screen.dart';

class DiscoverScreen extends StatelessWidget {
  final ThemeController themeController;

  const DiscoverScreen({super.key, required this.themeController});

  @override
  Widget build(BuildContext context) {
    final sheetColor = AppColors.background(context);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: AppColors.headerGradient(context),
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          Positioned.fill(
            top: 452,
            child: Container(color: sheetColor),
          ),
          SafeArea(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const SizedBox(height: 12),
                _Header(themeController: themeController),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 18, 16, 4),
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const SearchScreen()),
                    ),
                    borderRadius: BorderRadius.circular(16),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
                      decoration: BoxDecoration(
                        color: AppColors.card(context),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: AppColors.cardBorder(context)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.25),
                            blurRadius: 16,
                            offset: const Offset(0, 6),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.search, color: AppColors.accent(context), size: 20),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              'Where in London do you want to go?',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: AppColors.muted(context),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const CategoriesRow(),
                Container(
                  margin: const EdgeInsets.only(top: 18),
                  decoration: BoxDecoration(
                    color: sheetColor,
                    borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x1A000000),
                        blurRadius: 20,
                        offset: Offset(0, -6),
                      ),
                    ],
                  ),
                  child: const Column(
                    children: [
                      SizedBox(height: 8),
                      PopularDestinationsSection(),
                      EventsSection(),
                      PopularRestaurantsSection(),
                      TrendingCreatorsSection(),
                      HolidaysSection(),
                      SizedBox(height: 24),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// Welcome header shown over the gradient at the top of the Discover screen.
class _Header extends StatelessWidget {
  final ThemeController themeController;

  const _Header({required this.themeController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 4, 8, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(Icons.location_on, size: 15, color: Colors.white70),
                    const SizedBox(width: 5),
                    Text(
                      'LONDON, ONTARIO',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1.4,
                        color: Colors.white.withValues(alpha: 0.85),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                const Text(
                  'Explore the\nForest City',
                  style: TextStyle(
                    fontSize: 32,
                    height: 1.1,
                    fontWeight: FontWeight.w800,
                    letterSpacing: -0.5,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () => ThemeModeSheet.show(context, themeController),
            tooltip: 'Appearance',
            icon: const Icon(Icons.brightness_6_outlined, color: Colors.white),
          ),
          IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const AboutScreen()),
            ),
            tooltip: 'About',
            icon: const Icon(Icons.info_outline_rounded, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
