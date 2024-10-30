import'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/feature/membership/presentation/view/widgets/membership_widgets/stepperwidget.dart';
class separate15 extends StatelessWidget {
  const separate15({super.key});

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
                       text: '750 LE for one person',),
                       Stepperwidget2(
                       text: 'One invitation for your friends  spend a day in Shagaf included drink ',),
                      
              
                                
                   
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}