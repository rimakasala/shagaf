import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Textformfiled extends StatelessWidget {
  const Textformfiled({super.key, required this.uptext, required this.hinttext, required this.prefix});
  final String uptext;
  final String hinttext;
 final  dynamic prefix;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              uptext,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: 50.h,
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon:prefix ,
                prefixIconColor: const Color(0xFF969696),
              
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Colors.black,
                    ),
                  ),
                  hintText: hinttext,
                  hintStyle: TextStyle(fontSize: 16.sp,color: const Color(0xFF969696))),
            ),
          )
        ],
      ),
    );
  }
}
