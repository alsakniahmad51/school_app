import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:school_app/features/course/presentation/pages/course_details_page.dart';

void main() {
  testWidgets('course details tab switches between files and news', (
    tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: CourseDetailsPage()));

    expect(find.text('الفقة والشريعة'), findsOneWidget);
    expect(find.text('الملفات المرفقة'), findsOneWidget);
    expect(find.text('Session 1.0.pdf'), findsOneWidget);

    await tester.tap(find.text('الإعلانات'));
    await tester.pumpAndSettle();

    expect(find.text('الإعلانات'), findsOneWidget);
  });
}
