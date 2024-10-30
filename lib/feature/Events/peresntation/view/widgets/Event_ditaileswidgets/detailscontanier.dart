import 'package:flutter/material.dart';
import 'package:shagaf/feature/Events/peresntation/view/widgets/Event_ditaileswidgets/stepperwidget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Detailscontanier extends StatefulWidget {
  const Detailscontanier({super.key});

  @override
  State<Detailscontanier> createState() => _DetailscontanierState();
}

class _DetailscontanierState extends State<Detailscontanier> {
  @override
  Widget build(BuildContext context) {
    return  ClipRRect(
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
            child: Container(
              width: 390.w,height: 430.h,
              color: Colors.white,
              child: Column(
                
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20,bottom: 10,top: 10),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text("Details",style: TextStyle(  color: const Color(0xFFF04C29),fontSize: 16.sp,fontWeight: FontWeight.w400),),
                    
                    ),
                  ),
                   Stepperwidget()
                ],
              ),
            ),
          );
  }
}