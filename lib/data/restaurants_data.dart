import 'package:flutter/material.dart';
import '../models/restaurant.dart';

// London, ON dining. Entries with an address are real local restaurants;
// the rest are fictional concepts representative of the city's dining scene.
class RestaurantsData {
  RestaurantsData._();

  static const all = <Restaurant>[
    Restaurant(
      name: 'Craft Farmacy',
      cuisine: 'Café & Comfort Food',
      priceRange: r'$$',
      neighbourhood: 'Old South',
      details:
          'A bustling all-day café and bakery on Wharncliffe Road South, known '
          'for scratch-made brunch, house pastries and specialty coffee, plus a '
          'grab-and-go market fridge.',
      icon: Icons.local_cafe,
      rating: 4.5,
      address: '449 Wharncliffe Rd S, London, ON',
    ),
    Restaurant(
      name: 'The Foundry Kitchen',
      cuisine: 'Modern Canadian',
      priceRange: r'$$$',
      neighbourhood: 'Downtown London',
      details:
          'A farm-to-table spot in a converted industrial space downtown, pairing seasonal Ontario produce with a rotating chalkboard menu and a strong regional wine list.',
      icon: Icons.restaurant,
      rating: 4.6,
    ),
    Restaurant(
      name: 'Blackfriars Bistro',
      cuisine: 'French Bistro',
      priceRange: r'$$$',
      neighbourhood: 'Wortley Village',
      details:
          'A cozy neighbourhood bistro near the historic Blackfriars Bridge, known for its steak frites, weekend brunch, and riverside patio.',
      icon: Icons.wine_bar,
      rating: 4.5,
    ),
    Restaurant(
      name: 'Wortley Village Trattoria',
      cuisine: 'Italian',
      priceRange: r'$$',
      neighbourhood: 'Wortley Village',
      details:
          'Family-run trattoria serving hand-rolled pasta and wood-fired pizza on one of London\'s most walkable dining strips.',
      icon: Icons.local_pizza,
      rating: 4.4,
    ),
    Restaurant(
      name: 'Old East Smokehouse',
      cuisine: 'BBQ',
      priceRange: r'$$',
      neighbourhood: 'Old East Village',
      details:
          'Low-and-slow smoked brisket and ribs served out of a former warehouse, with picnic-table seating and local craft beer on tap.',
      icon: Icons.outdoor_grill,
      rating: 4.5,
    ),
    Restaurant(
      name: 'Dundas Street Diner',
      cuisine: 'Breakfast & Comfort Food',
      priceRange: r'$',
      neighbourhood: 'Old East Village',
      details:
          'A classic all-day breakfast diner beloved for its bottomless coffee, generous portions, and friendly counter service.',
      icon: Icons.breakfast_dining,
      rating: 4.3,
    ),
    Restaurant(
      name: 'Covent Garden Tapas',
      cuisine: 'Spanish',
      priceRange: r'$$',
      neighbourhood: 'Downtown London',
      details:
          'Small plates and sangria in a lively room steps from Covent Garden Market, popular for pre-theatre dinners before a show at the Grand.',
      icon: Icons.tapas,
      rating: 4.4,
    ),
    Restaurant(
      name: 'Richmond Row Ramen',
      cuisine: 'Japanese',
      priceRange: r'$$',
      neighbourhood: 'Downtown London',
      details:
          'A compact ramen counter on Richmond Row known for rich tonkotsu broth and a late-night menu on weekends.',
      icon: Icons.ramen_dining,
      rating: 4.5,
    ),
    Restaurant(
      name: 'Storybook Café',
      cuisine: 'Café & Bakery',
      priceRange: r'$',
      neighbourhood: 'Byron',
      details:
          'A relaxed café near Springbank Park serving espresso, fresh pastries, and sandwiches perfect for refuelling after a walk through Storybook Gardens.',
      icon: Icons.local_cafe,
      rating: 4.3,
    ),
    Restaurant(
      name: 'Old North Pizza Co.',
      cuisine: 'Pizza',
      priceRange: r'$$',
      neighbourhood: 'Old North',
      details:
          'Neapolitan-style pizza baked in a wood-fired oven, a favourite with Western University students and Old North families alike.',
      icon: Icons.local_pizza,
      rating: 4.4,
    ),
    Restaurant(
      name: 'Masonville Sushi Bar',
      cuisine: 'Japanese',
      priceRange: r'$$',
      neighbourhood: 'North London',
      details:
          'A bright, modern sushi bar near Masonville Place offering fresh nigiri, rolls, and bento boxes for a quick North London lunch.',
      icon: Icons.set_meal,
      rating: 4.3,
    ),
    Restaurant(
      name: 'Fanshawe Farm Table',
      cuisine: 'Canadian',
      priceRange: r'$$',
      neighbourhood: 'East London',
      details:
          'A rustic dining room near Fanshawe Conservation Area sourcing produce and meat from nearby Middlesex County farms.',
      icon: Icons.dining,
      rating: 4.4,
    ),
    Restaurant(
      name: 'White Oaks Grill',
      cuisine: 'Steakhouse',
      priceRange: r'$$$',
      neighbourhood: 'White Oaks',
      details:
          'A dependable South London steakhouse serving classic grilled mains alongside a well-stocked salad bar.',
      icon: Icons.dinner_dining,
      rating: 4.2,
    ),
  ];
}
