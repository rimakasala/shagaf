import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/feature/membership/presentation/view/widgets/photosession/photosessionbody.dart';
class Photosessionscreen extends StatelessWidget {
  const Photosessionscreen({super.key});

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
              title: Text('Photo Session',style: TextStyle(fontSize: 25.sp,color: Colors.black),),
              leading: IconButton(onPressed: (){}, icon:const Icon(Icons.keyboard_arrow_left_sharp,
                size: 25, color: Colors.black) ),
            ),
            body: const Photosessionbody()
          );
        });
  }
}
 