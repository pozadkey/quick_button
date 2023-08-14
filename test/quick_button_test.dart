import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:quick_button/quick_button.dart';

void main() {
  testWidgets('Click button', (WidgetTester tester) async {
    // Find all widgets needed.
    var pressed = false;
    final enterButton = find.byKey(const ValueKey('onTapButton'));

    // Execute the actual test.
    await tester.pumpWidget(MaterialApp(home: Scaffold(
      body: QuickButton(onPressed: () {
        pressed = true;
      }),
    )));
    await tester.tap(enterButton);
    // Rebuild widget state.
    await tester.pump();

    // Validate test outputs.
    expect(pressed, true);
  });
}
