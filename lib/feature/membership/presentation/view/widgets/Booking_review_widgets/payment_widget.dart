import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class PaymentWidget extends StatelessWidget {
  const PaymentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        elevation: 5,
        shadowColor: Colors.black,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Container(
            width: 342.w,
            height: 130.h,
                  
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8,left: 15,bottom: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Payment Method',style: TextStyle(fontSize: 20.sp,color: Colors.black),),
                        
                        Text('You will not be debited until your booking is confirmed',style: TextStyle(fontSize: 12.sp,color: Colors.black),),
                    
                        Row(
                          children: [
                            Icon(Icons.check_circle_sharp,color: Color(0xFFF04C29),size: 20,),
                            Text('Add card',style: TextStyle(fontSize: 14.sp,color: Colors.black),),
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
