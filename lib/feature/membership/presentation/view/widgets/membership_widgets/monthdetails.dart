import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/feature/membership/presentation/view/widgets/membership_widgets/stepperwidget.dart';
class Monthdetails extends StatelessWidget {
  const Monthdetails({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        elevation: 5,
        shadowColor: Colors.black,
        child: ClipRRect(
          borderRadius:  BorderRadius.circular(10),
          child: Container(
            color: Colors.white,
            width:double.maxFinite,height: 220.h,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stepperwidget2(
                       text: '1250 LE for one person',),
                       Stepperwidget2(
                       text: 'included daily drink and movie night for you and your friends',),
                      
              
                                
                   Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
              // The dashed line and bullet point
              Column(
                children: [
                 // Above the bull
                  Center(
                    child: Container(
                                
                    height: 10.h,
                      width: 10.w,
                      decoration: const BoxDecoration(
                        color: Color(0xFFF04C29
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                 // Below the bullet point
                
                ],
              ),
              // The text
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    "4 invitations for your friends  spend a day in Shagaf included drink ",
                    style: TextStyle(fontSize: 16.sp),
                  ),
                ),
              ),
                        ],
                )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}