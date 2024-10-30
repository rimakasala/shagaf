import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:shagaf/feature/settings/presentation/view/widgets/contact_widgets/contact_appbar.dart';
class Contactbody extends StatelessWidget {
  const Contactbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ContactAppbar(),
      Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
              const Icon(Icons.phone_outlined,size: 25,color: Color(0xFF009688),),
        
                Text (" 015557992",style: 
                         TextStyle(color:Colors.black,fontSize: 20.sp,fontWeight: FontWeight.w400 ),),
              ],
            ),
            const Divider()
          ],
        ),
      ),
        Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                Brand(Brands.facebook,size: 25),
        
                Text ( " Shaghaf Co-working space",style: 
                         TextStyle(color:Colors.black,fontSize: 20.sp,fontWeight: FontWeight.w400 ),),
                        
              ],
            ),
            const Divider()
          ],
        ),
      ),
      
        Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                 Brand(Brands.gmail,size: 25),
                Text (" shagaf@gmail.com",style: 
                         TextStyle(color:Colors.black,fontSize: 20.sp,fontWeight: FontWeight.w400 ),),
              ],
            ),
            const Divider()
          ],
        ),
      ),
          Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                   Brand(Brands.instagram,size: 25),
                Text (" shagaf@gmail.com",style: 
                         TextStyle(color:Colors.black,fontSize: 20.sp,fontWeight: FontWeight.w400 ),),
              ],
            ),
            const Divider()
          ],
        ),
      ),
        Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                 Brand(Brands.snapchat_circled_logo,size: 25),
                Text (" shagaf@gmail.com",style: 
                         TextStyle(color:Colors.black,fontSize: 20.sp,fontWeight: FontWeight.w400 ),),
              ],
            ),
            const Divider()
          ],
        ),
      ),
        Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                 Brand(Brands.tiktok,size: 25),
                Text (" shagaf@gmail.com",style: 
                         TextStyle(color:Colors.black,fontSize: 20.sp,fontWeight: FontWeight.w400 ),),
              ],
            ),
            const Divider()
          ],
        ),
      ),
    ],
  )
  
      ],
    );
  }
}
