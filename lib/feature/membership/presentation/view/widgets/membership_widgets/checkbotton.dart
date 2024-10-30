import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Checkbotton extends StatefulWidget {
  const Checkbotton({super.key});

  @override
  State<Checkbotton> createState() => _CheckbottonState();
}

class _CheckbottonState extends State<Checkbotton> {
  @override
    bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
         setState(() {
            isChecked = !isChecked;
          });
      },
      child: Container(
        width:40.w ,height: 40.h,
        decoration: BoxDecoration(
          color:isChecked?const Color(0xFFF04C29):Colors.white,
         border: Border.all(
              color:isChecked? const Color(0xFFF04C29):const Color(0xFFFFCC0A), // Border color
              width: 2,
               // Border width
            ),
            borderRadius: BorderRadius.circular(10)
        ),
        child:isChecked? const Center(child: Icon(Icons.check,color: Colors.white,),):null ,

      

      ),

    ) ;
  }
}
