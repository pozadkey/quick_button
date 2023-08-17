import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:quick_button/quick_button.dart';

void main() {
  testWidgets('Click button', (WidgetTester tester) async {
    var pressed = false;
    final enterButton = find.byKey(const ValueKey('onTapButton'));

    await tester.pumpWidget(MaterialApp(
        home: Scaffold(
      body: QuickButton(
          labelText: 'Hello',
          onPressed: () {
            pressed = true;
          }),
    )));
    await tester.tap(enterButton);
    await tester.pump();
    expect(pressed, true);
  });
}
