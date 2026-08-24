import 'package:flutter/material.dart';

class CourseDetailsHeader extends StatelessWidget {
  const CourseDetailsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: const Text(
              'الفقة والشريعة',
              textDirection: TextDirection.rtl,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Color(0xFF000F0B),
                height: 1.3,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () => Navigator.of(context).maybePop(),
              child: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 20,
                color: Color(0xFF000F0B),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
