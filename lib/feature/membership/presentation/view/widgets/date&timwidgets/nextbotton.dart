import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Nextbotton extends StatefulWidget {
  const Nextbotton({super.key});

  @override
  State<Nextbotton> createState() => _NextbottonState();
}

class _NextbottonState extends State<Nextbotton> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shadowColor: Colors.black,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Container(
            color: const Color(0Xff20473E),
          height: 40.h,
          width: double.maxFinite,
          child: Center(child: Text("Next",style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.w400),),),
            
        ),
      ),
    );
  }
}