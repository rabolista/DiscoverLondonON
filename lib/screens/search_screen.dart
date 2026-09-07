import 'package:flutter/material.dart';
import '../data/neighbourhoods.dart';
import '../data/restaurants_data.dart';
import '../data/creators.dart';
import '../models/destination.dart';
import '../models/restaurant.dart';
import '../models/creator.dart';
import '../theme/colors.dart';
import 'city_guide_screen.dart';
import 'restaurant_detail_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final _controller = TextEditingController();
  String _query = '';

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  List<Destination> get _destinations {
    if (_query.isEmpty) return [];
    final q = _query.toLowerCase();
    return Neighbourhoods.all
        .where((d) => d.name.toLowerCase().contains(q) || d.region.toLowerCase().contains(q))
        .toList();
  }

  List<Restaurant> get _restaurants {
    if (_query.isEmpty) return [];
    final q = _query.toLowerCase();
    return RestaurantsData.all
        .where((r) =>
            r.name.toLowerCase().contains(q) ||
            r.cuisine.toLowerCase().contains(q) ||
            r.neighbourhood.toLowerCase().contains(q))
        .toList();
  }

  List<Creator> get _creators {
    if (_query.isEmpty) return [];
    final q = _query.toLowerCase();
    return Creators.all
        .where((c) => c.name.toLowerCase().contains(q) || c.category.toLowerCase().contains(q))
        .toList();
  }

  bool get _hasResults => _destinations.isNotEmpty || _restaurants.isNotEmpty || _creators.isNotEmpty;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: TextField(
          controller: _controller,
          autofocus: true,
          decoration: const InputDecoration(
            hintText: 'Where in London do you want to go?',
            border: InputBorder.none,
          ),
          onChanged: (value) => setState(() => _query = value),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancel')),
        ],
      ),
      body: _query.isEmpty
          ? _emptyPrompt()
          : (_hasResults ? _resultsList() : _noResults()),
    );
  }

  Widget _emptyPrompt() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.search, size: 48, color: AppColors.primary.withValues(alpha: 0.6)),
            const SizedBox(height: 16),
            Text(
              'Search London neighbourhoods, restaurants, and creators',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.grey[600]),
            ),
          ],
        ),
      ),
    );
  }

  Widget _noResults() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.search_off, size: 48, color: Colors.grey[400]),
          const SizedBox(height: 16),
          Text(
            'No results for "$_query"',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }

  Widget _resultsList() {
    return ListView(
      children: [
        if (_destinations.isNotEmpty) ...[
          const _SectionLabel('Neighbourhoods'),
          for (final destination in _destinations)
            ListTile(
              leading: const Icon(Icons.location_on, color: AppColors.primary),
              title: Text(destination.name),
              subtitle: Text(destination.region),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => CityGuideScreen(destination: destination)),
              ),
            ),
        ],
        if (_restaurants.isNotEmpty) ...[
          const _SectionLabel('Restaurants'),
          for (final restaurant in _restaurants)
            ListTile(
              leading: CircleAvatar(
                backgroundColor: AppColors.primary,
                child: Icon(restaurant.icon, size: 18, color: Colors.white),
              ),
              title: Text(restaurant.name),
              subtitle: Text('${restaurant.cuisine} • ${restaurant.neighbourhood}'),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => RestaurantDetailScreen(restaurant: restaurant)),
              ),
            ),
        ],
        if (_creators.isNotEmpty) ...[
          const _SectionLabel('Creators'),
          for (final creator in _creators)
            ListTile(
              leading: const Icon(Icons.person, color: AppColors.primary),
              title: Text(creator.name),
              subtitle: Text(creator.category),
            ),
        ],
      ],
    );
  }
}

class _SectionLabel extends StatelessWidget {
  final String text;
  const _SectionLabel(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 4),
      child: Text(
        text,
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.grey[600]),
      ),
    );
  }
}
