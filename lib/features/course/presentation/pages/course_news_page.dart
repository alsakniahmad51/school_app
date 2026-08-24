import 'package:flutter/material.dart';

import '../widgets/announcement_item.dart';

class CourseNewsPage extends StatelessWidget {
  const CourseNewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AnnouncementItem(
          title: 'تبديل موعد الحصة الأسبوعية إلى يوم الثلاثاء',
          date: '2026-08-20',
        ),
        SizedBox(height: 12),
        AnnouncementItem(
          title: 'سيتم مراجعة الواجب المنزلي في الحصة القادمة',
          date: '2026-08-18',
        ),
      ],
    );
  }
}
