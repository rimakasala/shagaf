import'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'bookingdetails_stepper.dart';
class BookingDetails extends StatelessWidget {
  const BookingDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        elevation: 5,
        shadowColor: Colors.black,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: 342.w,height: 175.h,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                
                    BookingdetailsStepper(),
                    TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xFFFF04C29).withOpacity(0.33),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  'Change',
                  style: TextStyle(color: Color(0xFFFF04C29), fontSize: 16.sp),
                ),
              ),
                  

            ],
            
            
          ),
        ),
      ),
    ));
  }
}