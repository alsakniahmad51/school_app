import 'package:flutter/material.dart';

class CourseTestsPage extends StatelessWidget {
  const CourseTestsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'علامات الطالب',
            textDirection: TextDirection.rtl,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xFF000F0B),
            ),
          ),
          SizedBox(height: 12),
          _ExamMarksTable(),
        ],
      ),
    );
  }
}

class _ExamMarksTable extends StatelessWidget {
  const _ExamMarksTable();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xFFE0E0E0)),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Column(
          children: const [
            _ExamTableHeader(),
            _ExamTableRow(
              date: '01',
              examType: 'مذاكرة',
              mark: '85',
              status: 'ناجح',
              statusColor: Color(0xFF00A63E),
              valueColor: Color(0xFF00A63E),
            ),
            _DividerLine(),
            _ExamTableRow(
              date: '01',
              examType: 'امتحان نصفي',
              mark: '50',
              status: 'راسب',
              statusColor: Color(0xFFDC2626),
              valueColor: Color(0xFFDC2626),
            ),
          ],
        ),
      ),
    );
  }
}

class _ExamTableHeader extends StatelessWidget {
  const _ExamTableHeader();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF0F7F5),
      child: const Row(
        textDirection: TextDirection.rtl,
        children: [
          _TableCell(
            width: 82,
            child: Text(
              'التاريخ',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w600,
                color: Color(0xFF000F0B),
              ),
            ),
          ),
          _TableCell(
            child: Text(
              'نوع الاختبار',
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w600,
                color: Color(0xFF000F0B),
              ),
            ),
          ),
          _TableCell(
            width: 80,
            child: Text(
              'العلامة',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w600,
                color: Color(0xFF000F0B),
              ),
            ),
          ),
          _TableCell(
            width: 60,
            child: Text(
              'الحالة',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w600,
                color: Color(0xFF000F0B),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ExamTableRow extends StatelessWidget {
  final String date;
  final String examType;
  final String mark;
  final String status;
  final Color statusColor;
  final Color valueColor;

  const _ExamTableRow({
    required this.date,
    required this.examType,
    required this.mark,
    required this.status,
    required this.statusColor,
    required this.valueColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        textDirection: TextDirection.rtl,
        children: [
          _TableCell(
            width: 82,
            child: Text(
              date,
              textAlign: TextAlign.right,
              style: const TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w600,
                color: Color(0xFF000F0B),
              ),
            ),
          ),
          _TableCell(
            child: Text(
              examType,
              textAlign: TextAlign.right,
              style: const TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w600,
                color: Color(0xFF000F0B),
              ),
            ),
          ),
          _TableCell(
            width: 80,
            child: Text(
              mark,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w600,
                color: valueColor,
              ),
            ),
          ),
          _TableCell(
            width: 60,
            child: Text(
              status,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w600,
                color: statusColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _TableCell extends StatelessWidget {
  final double? width;
  final Widget child;

  const _TableCell({this.width, required this.child});

  @override
  Widget build(BuildContext context) {
    final cell = Padding(
      padding: const EdgeInsets.all(8),
      child: Align(alignment: Alignment.centerRight, child: child),
    );

    if (width != null) {
      return SizedBox(width: width, child: cell);
    }

    return Expanded(child: cell);
  }
}

class _DividerLine extends StatelessWidget {
  const _DividerLine();

  @override
  Widget build(BuildContext context) {
    return const Divider(height: 1, thickness: 1, color: Color(0xFFE0E0E0));
  }
}
