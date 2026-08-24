import 'package:flutter/material.dart';

import '../widgets/home_header.dart';
import '../widgets/home_status_bar.dart';
import '../widgets/semester_switcher.dart';
import '../widgets/subject_list_item.dart';
import '../widgets/summary_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const HomeHeader(),
              const SizedBox(height: 12),
              const SemesterSwitcher(),
              const SizedBox(height: 12),
              const SummaryCard(),
              const SizedBox(height: 12),
              const SubjectListItem(courseTitle: 'الفقه والشريعة'),
              const SizedBox(height: 8),
              const SubjectListItem(courseTitle: 'الأخلاق والمعاملات'),
              const SizedBox(height: 8),
              const SubjectListItem(courseTitle: 'التاريخ الإسلامي'),
            ],
          ),
        ),
      ),
    );
  }
}
