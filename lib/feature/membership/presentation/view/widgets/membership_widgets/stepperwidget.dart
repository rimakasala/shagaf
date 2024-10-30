import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Stepperwidget2 extends StatelessWidget {
  const Stepperwidget2({super.key, required this.text});
  final String text;

  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // The dashed line and bullet point
        Column(
          children: [
            // Above the bull
            Center(
              child: Container(
                height: 10.4.h,
                width: 10.w,
                decoration: const BoxDecoration(
                  color: Color(0xFFF04C29),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            // Below the bullet point
            const Center(child: DashedLine()),
          ],
        ),
        // The text
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              text,
              style: TextStyle(fontSize: 16.sp),
            ),
          ),
        ),
      ],
    );
  }
}

// DashedLine widget to create the dashed effect
class DashedLine extends StatelessWidget {
  const DashedLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(8, (index) {
        return Container(
          width: 1.w,
          height: 4.h,
          color: const Color(0xFFF04C29), // Color of the dashed line
          margin:
              const EdgeInsets.symmetric(vertical: 1), // Space between dashes
        );
      }),
    );
  }
}
