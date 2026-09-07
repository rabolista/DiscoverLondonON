import '../models/creator.dart';

// Fictional creator personas representing popular London, ON content niches (not tied to real individuals).
class Creators {
  Creators._();

  static const all = <Creator>[
    Creator(
      name: 'Forest City Foodie',
      category: 'Food Reviews',
      tagline: 'Ranking London\'s best hidden food spots',
    ),
    Creator(
      name: 'YXU Explorer',
      category: 'Hidden Gems',
      tagline: 'Weekend adventures around London and Middlesex County',
    ),
    Creator(
      name: '519 Eats',
      category: 'Restaurant Reviews',
      tagline: 'Honest reviews from the Forest City food scene',
    ),
    Creator(
      name: 'Thames Valley Wanderer',
      category: 'Photography',
      tagline: 'Capturing the Thames River one trail at a time',
    ),
    Creator(
      name: 'Forest City Weekend Guide',
      category: 'Events & Things To Do',
      tagline: 'What\'s on across London this weekend',
    ),
    Creator(
      name: 'Old South Diaries',
      category: 'Neighbourhood Life',
      tagline: 'Exploring life in Wortley Village and beyond',
    ),
  ];
}
