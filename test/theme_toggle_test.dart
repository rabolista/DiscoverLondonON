import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:discover_london_on/main.dart';
import 'package:discover_london_on/theme/theme_controller.dart';

void main() {
  testWidgets('appearance toggle switches to dark and persists', (tester) async {
    SharedPreferences.setMockInitialValues({});
    final controller = await ThemeController.load();
    expect(controller.mode, ThemeMode.system);

    await tester.pumpWidget(DiscoverLondonApp(themeController: controller));
    await tester.pumpAndSettle();

    // Open the appearance sheet from the header.
    await tester.tap(find.byTooltip('Appearance'));
    await tester.pumpAndSettle();

    // Pick "Dark".
    await tester.tap(find.text('Dark'));
    await tester.pumpAndSettle();

    expect(controller.mode, ThemeMode.dark);

    final BuildContext ctx = tester.element(find.text('Popular Neighbourhoods'));
    expect(Theme.of(ctx).brightness, Brightness.dark);

    // Preference was written.
    final prefs = await SharedPreferences.getInstance();
    expect(prefs.getString('theme_mode'), 'dark');
  });

  testWidgets('saved dark preference is restored on launch', (tester) async {
    SharedPreferences.setMockInitialValues({'theme_mode': 'dark'});
    final controller = await ThemeController.load();
    expect(controller.mode, ThemeMode.dark);

    await tester.pumpWidget(DiscoverLondonApp(themeController: controller));
    await tester.pumpAndSettle();

    final BuildContext ctx = tester.element(find.text('Popular Neighbourhoods'));
    expect(Theme.of(ctx).brightness, Brightness.dark);
  });
}
