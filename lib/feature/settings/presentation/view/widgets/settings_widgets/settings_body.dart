import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:shagaf/feature/settings/presentation/view/widgets/settings_widgets/settings_appbar.dart';
class SettingsBody extends StatelessWidget {
  const SettingsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SettingsAppbar(),
        const SizedBox(height: 20,),
  Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                 const Icon(Icons.person_outline_outlined,color: Color(0xFFF04C29),),
        
                Text ("Profile",style: 
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
                 const Icon(Icons.language,color: Color(0xFFF04C29),),
        
                Text (" English",style: 
                         TextStyle(color:Colors.black,fontSize: 20.sp,fontWeight: FontWeight.w400 ),),
                         const SizedBox(
                          width: 165,
                          ), IconButton( onPressed: () {  }, icon: const Icon(Icons.keyboard_arrow_down ,color: Color(0xFFF04C29),size: 25,),)
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
                 const Icon(Icons.notifications_outlined,color: Color(0xFFF04C29),),
        
                Text (" Notification",style: 
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
                 const Icon(Icons.contact_page_outlined,color: Color(0xFFF04C29),),
        
                Text (" Contact Us",style: 
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
                 const Icon(Icons.chat_outlined,color: Color(0xFFF04C29),),
        
                Text (" About Us",style: 
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