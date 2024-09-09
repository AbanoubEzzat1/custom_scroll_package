import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:custom_scroll_package/custom_scroll_package.dart';

void main() {
  testWidgets('CustomScrollbarWithSingleChildScrollView renders correctly',
      (WidgetTester tester) async {
    // Create a ScrollController for testing
    final ScrollController controller = ScrollController();

    // Build the widget
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: CustomScrollbar(
            controller: controller,
            scrollDirection: Axis.vertical,
            child: Column(
              children: List.generate(50, (index) => Text('Item $index')),
            ),
          ),
        ),
      ),
    );

    // Verify that the widget renders correctly
    expect(find.byType(CustomScrollbar), findsOneWidget);

    // Verify the content inside the scroll view
    expect(find.text('Item 0'), findsOneWidget);
    expect(find.text('Item 49'), findsOneWidget);

    // Simulate scroll and check if it works
    await tester.drag(
        find.byType(SingleChildScrollView), const Offset(0, -300));
    await tester.pump();
    expect(controller.offset, greaterThan(0));
  });
}
