import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Bookingcontianer extends StatefulWidget {
  const Bookingcontianer({super.key});

  @override
  State<Bookingcontianer> createState() => _BookingcontianerState();
}

class _BookingcontianerState extends State<Bookingcontianer> {
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5, // controls the size of the shadow
      shadowColor: Colors.black,
      child: Container(
        width: 390.w,height: 80.h,
        color: Colors.white,
        child: Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("200.0 EGP/Person",style: TextStyle(color: const Color(0xFFF04C29),fontSize: 14.sp,fontWeight: FontWeight.w400),),
            InkWell(
              onTap: (){},
              child: ClipRRect
              (borderRadius: BorderRadius.circular(10),
                child: Container(
                  width: 131.w,height: 38.h,
                  color: const Color(0xFFF04C29),
                  child: Center(child: Text("Book Now",style: TextStyle(color: Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w400),),),
                  
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}