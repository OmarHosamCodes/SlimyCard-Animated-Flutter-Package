import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:example/main.dart';

void main() {
  testWidgets('Test SlimyCard widget', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: HomePage()));

    // Verify that the top card widget is displayed correctly
    expect(find.text('The Rock'), findsOneWidget);
    expect(find.text('He asks, what your name is. But!'), findsOneWidget);

    // Verify that the bottom card widget is displayed correctly
    expect(find.text("It doesn't matter \nwhat your name is."), findsOneWidget);
  });
}
