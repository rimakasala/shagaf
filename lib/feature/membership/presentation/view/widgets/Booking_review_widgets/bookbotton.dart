import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Bookbotton extends StatelessWidget {
  const Bookbotton({super.key});

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
          color:Color(0xFF20473E),
          child: Center(child: Text("Book",style: TextStyle(color:Colors.white,fontSize:16.sp,fontWeight:FontWeight.bold   ),),),
        ),
      ),
    );
  }
}