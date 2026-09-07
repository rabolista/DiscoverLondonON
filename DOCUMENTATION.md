# Discover London ON — Documentation

A Flutter city guide for **London, Ontario** ("The Forest City"). It surfaces
neighbourhoods, attractions, restaurants, running groups, grocery stores and
annual events, plus Ontario public holidays. All content ships inside the app;
the only network use is loading landmark photos and opening maps.

- **Store name:** London ON
- **Bundle ID / applicationId:** `com.rabski.TravelDiscoveryLondon` (iOS and Android)
- **Version:** 1.1.0 (build 2)
- **Repo:** https://github.com/rabolista/DiscoverLondonON

### App Store Connect / Play Console

These live in the store consoles, not in the build. The build is linked to a
store record only by its bundle ID.

- **Apple ID (App Store Connect):** `6809522146`
- **SKU:** `com.rabski.TravelDiscoveryLondon`
- **Apple Team ID:** `9HH5H3KSDL` (automatic signing)

---

## Running the project

```bash
flutter pub get
flutter run                 # pick a device, or:
flutter run -d <device-id>  # e.g. an iOS simulator or Android emulator UDID
flutter analyze
flutter test
```

Requires Flutter 3.47+ / Dart SDK `^3.13.0`.

### Build

```bash
flutter build ipa           # iOS
flutter build appbundle     # Android (Play Store)
flutter build apk           # Android (sideload)
```

App icons are generated from `assets/icon/app_icon.png` via
`flutter_launcher_icons` (`dart run flutter_launcher_icons`).

---

## Architecture

Plain Flutter with `setState` / `ChangeNotifier` — no state-management package,
no backend, no database. Everything is a `StatelessWidget` except the search
screen, the About screen and the theme controller.

```
lib/
  main.dart                     App entry; loads ThemeController, builds MaterialApp
  theme/
    colors.dart                 AppColors — brand colours + context-aware tokens
    app_theme.dart              AppTheme.light / AppTheme.dark (ThemeData)
    theme_controller.dart       ThemeController — System/Light/Dark, persisted
  models/                       Immutable data classes (Place, Restaurant, Event, …)
  data/                         Hard-coded content (the "database")
  screens/                      Full-page routes
  widgets/                      Reusable pieces (cards, rows, sections, images)
```

### Screens

| Screen | Purpose |
| --- | --- |
| `DiscoverScreen` | Home. Gradient hero + search + category row + stacked sections. |
| `SearchScreen` | Filters neighbourhoods, restaurants and creators by query. |
| `CategoryDetailsScreen` | Places tagged with a given category (Art, Sport, Groceries, …). |
| `CityGuideScreen` | A neighbourhood's attractions, grouped into sections. |
| `PlaceDetailScreen` / `RestaurantDetailScreen` / `EventDetailScreen` / `CreatorDetailScreen` | Detail pages with photo/hero, description and (where relevant) Get Directions. |
| `AllDestinationsScreen` / `AllRestaurantsScreen` / `AllCreatorsScreen` / `AllEventsScreen` | "See all" list pages. |
| `AboutScreen` | App info, version, photo credits, developer links. |

### Data model

`data/*.dart` are the single source of truth:

- **`neighbourhoods.dart`** — `Destination` list (name, region, icon, gradient colours, optional `imageUrl`/`imageCredit`).
- **`city_guide_data.dart`** — `PlaceSection` lists per neighbourhood, plus the standalone `runningGroups` and `groceries` sections. `allPlaces` flattens everything; `CategoryDetailsScreen` filters it by `place.tags`.
- **`restaurants_data.dart`** — `Restaurant` list. Entries with an `address` are real businesses; the rest are representative fictional concepts. Photos are representative stock dishes, not the venues.
- **`events_data.dart`** — `Event` list, sorted by `month`. `dateLabel` is the confirmed 2026 date where known, otherwise the usual season.
- **`holidays_data.dart`** — computes Ontario statutory holidays for any year (Easter algorithm, nth-weekday helpers).
- **`creators.dart`** — fictional local content-creator personas (initials avatars only).
- **`categories.dart`** — the home category buttons. A category's `name` must match the `tags` used on places.

### Adding content

- **A place under an existing category:** add a `Place(...)` to the relevant
  `PlaceSection` in `city_guide_data.dart` with the category name in `tags`.
- **A new category button:** add an `AppCategory` to `categories.dart`, then tag
  places with the exact same name. Give it its own `PlaceSection` and add that
  section to the `allPlaces` list if it is not tied to a neighbourhood.
- **An event:** add an `Event(...)` to `events_data.dart`.
- **A photo:** set `imageUrl` (960px, hot-linked from `upload.wikimedia.org`) and
  `imageCredit` on the model. See *Images* below.

---

## Theming

`AppColors` exposes context-aware tokens instead of raw colours — always use
these so both themes stay correct:

| Token | Light | Dark |
| --- | --- | --- |
| `background(context)` | `#F1F4F1` | `#0E110E` |
| `card(context)` | white | `#20261F` |
| `muted(context)` | `#6B7280` | `#9AA69A` |
| `accent(context)` | `#2E7D32` | `#7CC67F` |
| `cardBorder(context)` | transparent | `#313A30` |
| `headerGradient(context)` | bright green | deep green → background |

`ThemeController` persists the user's choice (`System` / `Light` / `Dark`) to
`SharedPreferences` under the key `theme_mode`. The appearance picker opens from
the brightness icon in the home header (`ThemeModeSheet`).

Text styles generally omit an explicit colour so they inherit from the
`ThemeData` text theme and adapt automatically.

---

## Images

`RemoteImage` renders a network photo filling its bounds and falls back to the
icon/gradient tile while loading and on error. `PlaceImage` and
`DestinationImage` wrap it.

- Photos come from **Wikimedia Commons**, hot-linked at 960px from
  `upload.wikimedia.org`, cached on device by `cached_network_image`.
- Every photo is CC BY / CC BY-SA / CC0 / public domain. `imageCredit` names the
  author and licence and is shown as an `ImageCreditChip` on detail heroes.
- Restaurants and running groups intentionally keep icon tiles where no
  freely-licensed photo of the actual place exists.

---

## Third-party packages

| Package | Use |
| --- | --- |
| `url_launcher` | Opens Google Maps for "Get Directions" and external links in About. |
| `shared_preferences` | Stores the theme preference locally. |
| `cached_network_image` | Loads and disk-caches landmark/food photos. |
| `package_info_plus` | Reads the app version for the About screen. |
| `cupertino_icons` | iOS-style icon font. |

Dev: `flutter_lints`, `flutter_launcher_icons`.

---

## Privacy

The app has no accounts, analytics, ads or tracking, and collects no personal
data. See [PRIVACY.md](PRIVACY.md).
