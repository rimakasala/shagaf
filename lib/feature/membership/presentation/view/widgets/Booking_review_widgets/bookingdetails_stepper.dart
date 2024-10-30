import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class BookingdetailsStepper extends StatelessWidget {
   BookingdetailsStepper({super.key});

  int activeStep = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        color: Colors.white,
        width: 180.w,height:double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Text(
              "Booking Details",
              style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold,color: Colors.black),
            ),
          ),

            buildStep(
                'Sun, 25 Feb 2024 09:00 PM'),
                
            buildStep(
                'Sun, 25 Feb 2024 11:00 PM'),
                          
            buildStep(
                '300 LE from 1 to 6 persons'),
            
                          
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
              "Without helium balloons,350 EGP",
              style: TextStyle(fontSize: 12.sp),
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
              style: TextStyle(fontSize: 12.sp),
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
      children: List.generate(5, (index) {
        return Container(
          width: 1.w,
          height: 2.h,
          color: const Color(0xFFF04C29), // Color of the dashed line
          margin: const EdgeInsets.symmetric(vertical: 1), // Space between dashes
        );
      }),
    );
  }
}
