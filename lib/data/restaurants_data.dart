import 'package:flutter/material.dart';
import '../models/restaurant.dart';

// London, ON dining. Entries with an address are real local restaurants;
// the rest are fictional concepts representative of the city's dining scene.
// Photos are representative dishes from Wikimedia Commons (CC / CC0), not
// photos of the actual restaurants.
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
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/Rosella_Coffeeshop_Avocado_Toast_with_Cumin_-_North_River_District%2C_San_Antonio%2C_Texas_%282015-03-22_by_Nan_Palmero%29.jpg/960px-Rosella_Coffeeshop_Avocado_Toast_with_Cumin_-_North_River_District%2C_San_Antonio%2C_Texas_%282015-03-22_by_Nan_Palmero%29.jpg',
      imageCredit: 'Representative photo: Nan Palmero (CC BY 2.0)',
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
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/13/Grilled_steak_served_with_orange_slices_and_sauce_on_wooden_board_-_Flickr_-_nenadstojkovicart.jpg/960px-Grilled_steak_served_with_orange_slices_and_sauce_on_wooden_board_-_Flickr_-_nenadstojkovicart.jpg',
      imageCredit: 'Representative photo: Nenad Stojkovic (CC BY 4.0)',
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
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/Steak_frites_at_Bistro_du_Coin_-_Sarah_Stierch.jpg/960px-Steak_frites_at_Bistro_du_Coin_-_Sarah_Stierch.jpg',
      imageCredit: 'Representative photo: Sarah Stierch (CC BY 4.0)',
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
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/Curzul_piatto.jpg/960px-Curzul_piatto.jpg',
      imageCredit: 'Representative photo: GastRomagna (CC BY-SA 4.0)',
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
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Grilling_steak.jpg/960px-Grilling_steak.jpg',
      imageCredit: 'Representative photo: Penwills (CC BY-SA 4.0)',
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
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Egg_beans_gammon_and_chips_at_Stable_Yard_Hatfield_House_Hertfordshire_England.jpg/960px-Egg_beans_gammon_and_chips_at_Stable_Yard_Hatfield_House_Hertfordshire_England.jpg',
      imageCredit: 'Representative photo: Acabashi (CC BY-SA 4.0)',
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
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/Pimientos_de_Padr%C3%B3n_Madrid_2010_0709.jpg/960px-Pimientos_de_Padr%C3%B3n_Madrid_2010_0709.jpg',
      imageCredit: 'Representative photo: Takeaway (CC BY-SA 3.0)',
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
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Umami_Tonkotsu_ramen_bowlB.jpg/960px-Umami_Tonkotsu_ramen_bowlB.jpg',
      imageCredit: 'Representative photo: Umami Insider (CC BY-SA 4.0)',
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
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Pastries_with_coffee%2C_Roti%27O%2C_Surabaya_Pasarturi%2C_2025_%2801%29.jpg/960px-Pastries_with_coffee%2C_Roti%27O%2C_Surabaya_Pasarturi%2C_2025_%2801%29.jpg',
      imageCredit: 'Representative photo: Bahnfrend (CC BY-SA 4.0)',
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
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Punch_Neapolitan_Pizza_%282257039638%29.jpg/960px-Punch_Neapolitan_Pizza_%282257039638%29.jpg',
      imageCredit: 'Representative photo: Tony Webster (CC BY 2.0)',
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
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Unagi_Nigiri_Sushi_-_Suzuran_-_flash_%284004744354%29.jpg/960px-Unagi_Nigiri_Sushi_-_Suzuran_-_flash_%284004744354%29.jpg',
      imageCredit: 'Representative photo: Alpha (CC BY-SA 2.0)',
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
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d6/Grilled_steak_served_on_a_plate_with_avocado_and_sauce.jpg/960px-Grilled_steak_served_on_a_plate_with_avocado_and_sauce.jpg',
      imageCredit: 'Representative photo: Shixart1985 (CC BY 2.0)',
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
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Perfectly_grilled_steak_%288469274783%29.jpg/960px-Perfectly_grilled_steak_%288469274783%29.jpg',
      imageCredit: 'Representative photo: Prayitno (CC BY 2.0)',
    ),
  ];
}
