import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Menuimage extends StatelessWidget {



  final String image;

  const Menuimage({super.key, required this.image});


  @override


  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        width: 90.w,
        height: 90.h,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: NetworkImage(
                  image,
                ),
                fit: BoxFit.fill)),
      ),
      
    ]);
  }
}
