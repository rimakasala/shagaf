import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/feature/membership/presentation/view/widgets/Booking_review_widgets/Booking_review_body.dart';
class Booking_review_screen extends StatelessWidget {
  const Booking_review_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
        designSize: const Size(390, 844),
        builder: (context, child) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              centerTitle: true,
              title: Text('Booking Review',style: TextStyle(fontSize: 25.sp,color: Colors.black),),
              leading: IconButton(onPressed: (){}, icon:const Icon(Icons.keyboard_arrow_left_sharp,
                  size: 25, color: Colors.black) ),
            ),
            body:const Booking_review_body(),



          );
        });
  }
}
