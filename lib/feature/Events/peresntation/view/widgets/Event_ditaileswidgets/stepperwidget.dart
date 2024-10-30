import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Stepperwidget extends StatelessWidget {
   Stepperwidget({super.key});

  int activeStep = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Container(
        color: Colors.white,
        width: 290.w,height: 290.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildStep(
                'We will learn how to make ceramics and use them after that.'),
                
            buildStep(
                'The workshop will last for one day and last 3 hours. We will learn about it.'),
                          
            buildStep(
                'We will learn about the types of clay to differentiate the final result of the product.'),
            buildStep('How do I make shapes with clay without them cracking?'),
                          
             Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // The dashed line and bullet point
        Column(
          children: [
           // Above the bull
            Center(
              child: Container(
                          
              height: 10.h,
                width: 10.w,
                decoration: const BoxDecoration(
                  color: Color(0xFFF04C29
),
                  shape: BoxShape.circle,
                ),
              ),
            ),
           // Below the bullet point
          
          ],
        ),
        // The text
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(bottom:5,left: 5),
            child: Text(
              "We will burn the shapes we made and find out how they burn so that you can use them after that and live with you",
              style: TextStyle(fontSize: 10.sp),
            ),
          ),
        ),
      ],
    )
          ],
        ),
      ),
    );
  }

  Widget buildStep(String text) {
    return
     Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // The dashed line and bullet point
        Column(
          children: [
           // Above the bull
            Center(
              child: Container(
                          
              height: 10.h,
                width: 10.w,
                decoration: const BoxDecoration(
                  color: Color(0xFFF04C29
),
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
            padding: const EdgeInsets.only(bottom:10,left: 5),
            child: Text(
              text,
              style: TextStyle(fontSize: 10.sp),
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
          height: 3.h,
          color: const Color(0xFFF04C29), // Color of the dashed line
          margin: const EdgeInsets.symmetric(vertical: 1), // Space between dashes
        );
      }),
    );
  }
}
