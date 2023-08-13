import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:quick_button/quick_button.dart';

import 'test_material_app_widget.dart';

void main() {
  Widget wrapWithMaterialApp(QuickButton quickButton) {
    return TestMaterialAppWidget(
      home: quickButton,
    );
  }

  // Find label
  testWidgets('Label should shown on Magic Button', (tester) async {
    // given
    final widget = QuickButton(
      labelText: 'hello',
      onPressed: () {},
    );

    // when
    await tester.pumpWidget(wrapWithMaterialApp(widget));

    final labelFinder = find.text('hello');
    expect(labelFinder, findsOneWidget);
  });

  // Click on Magic Button
  testWidgets('Onpressed called on clicking Magic Button', (tester) async {
    //given
    var pressed = false;
    final widget = QuickButton(
      labelText: 'hello',
      onPressed: () {
        pressed = true;
      },
    );

    // when
    await tester.pumpWidget(wrapWithMaterialApp(widget));
    await tester.tap(find.byType(TextButton));

    // then
    expect(pressed, true);
  });
}
