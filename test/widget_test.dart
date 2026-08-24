// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:school_app/main.dart';

void main() {
  testWidgets('home screen renders the school overview design', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const SchoolApp());

    expect(find.text('سعيد الأكرم'), findsOneWidget);
    expect(find.text('الفصل الأول'), findsOneWidget);
    expect(find.text('الفقه والشريعة'), findsOneWidget);
  });
}
