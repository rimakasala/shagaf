import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:shagaf/feature/settings/presentation/view/widgets/order_widgets/menuwidget.dart';
import 'package:shagaf/feature/settings/presentation/view/widgets/order_widgets/order_appbar.dart';
class OrderBody extends StatefulWidget {
   const OrderBody({super.key});

  @override
  State<OrderBody> createState() => _OrderBodyState();
}

class _OrderBodyState extends State<OrderBody> {



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
  const OrderAppbar(),
  Align(
    alignment: Alignment.topLeft,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text("What’s on your mind?",style: TextStyle(color:  Colors.black,fontSize: 20.sp,fontWeight: FontWeight.w400),),
    ),
  ),
const Menuwidget(),
SizedBox(
  height: 60.h,
),

  Padding(
    padding: const EdgeInsets.all(5.0),
    child: InkWell(
      onTap: (){},
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: 342.w,
          height: 50.h,
          color: const Color(0xFF20473E),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Next   ",style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.w400),),
                          Text("  EGP 300.0",style: TextStyle(color: Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w400),),
            ],
          ),
        ),
      ),
    ),
  )





      ],

    ) ;
  }
}