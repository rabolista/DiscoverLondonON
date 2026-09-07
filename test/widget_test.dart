// This is a basic Flutter widget test.

import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:discover_london_on/main.dart';
import 'package:discover_london_on/theme/theme_controller.dart';

void main() {
  testWidgets('London ON home screen smoke test', (WidgetTester tester) async {
    SharedPreferences.setMockInitialValues({});
    final themeController = await ThemeController.load();

    await tester.pumpWidget(DiscoverLondonApp(themeController: themeController));

    expect(find.text('Explore the\nForest City'), findsOneWidget);
    expect(find.text('Popular Neighbourhoods'), findsOneWidget);
  });
}
