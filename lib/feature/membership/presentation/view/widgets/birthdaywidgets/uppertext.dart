import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Uppertext extends StatelessWidget {
  const Uppertext({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
            shadowColor: Colors.black,
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.maxFinite,
                  height: 50.h,
                  child: Row(
                    children: [
                       Container(
                height: 10.4.h,
                width: 10.w,
                decoration: const BoxDecoration(
                  color: Color(0xFFF04C29),
                  shape: BoxShape.circle,
                ),
              ),
          
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          "You can buy them from anywhere else without any cost or services",
                          style: TextStyle(fontSize: 16.sp),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
  }
}