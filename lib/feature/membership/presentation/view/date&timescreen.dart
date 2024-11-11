import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/feature/membership/presentation/view/widgets/date&timwidgets/date_timebody.dart';
class Date_timescreen extends StatelessWidget {
  const Date_timescreen({super.key});

  @override
    Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        builder: (context, child) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              centerTitle: true,
              title: Text('Select date and time',style: TextStyle(fontSize: 25.sp,color: Colors.black),),
              leading: IconButton(onPressed: (){}, icon:const Icon(Icons.keyboard_arrow_left_sharp,
                size: 25, color: Colors.black) ),
            ),
            body: const Date_Timebody(),
          
          );
        });
  }
}
 