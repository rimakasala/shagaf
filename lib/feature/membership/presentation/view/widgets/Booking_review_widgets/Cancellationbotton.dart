import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Cancellationbotton extends StatelessWidget {
  const Cancellationbotton({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shadowColor: Colors.black,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: 342.w,
          height: 50.h,
          color:Colors.white,
          child: Center(child: Text("Cancellation Policy",style: TextStyle(color:Color(0xFF20473E),fontSize:16.sp,fontWeight:FontWeight.bold   ),),),
        ),
      ),
    ) ;
  }
}