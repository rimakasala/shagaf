import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiscountsWidget extends StatelessWidget {
  const DiscountsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        elevation: 5,
        shadowColor: Colors.black,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Container(
            width: 342.w,
            height: 250.h,
                
                  decoration: BoxDecoration(
                    color: Colors.white,
                
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8,right: 8,top: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Discounts Available',style: TextStyle(fontSize: 16.sp,color: Colors.black),),
                            TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                backgroundColor: Color(0xffF04C29).withOpacity(0.33),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              child: Text(
                                'Add promo',
                                style: TextStyle(color: Color(0xffF04C29),fontSize: 12.sp),
                              ),
                            )
          
                          ],
                        ),
                      ),
                      Padding(
                       padding: const EdgeInsets.symmetric(horizontal:10,vertical: 7),
                       child: TextFormField(
                         decoration: InputDecoration(
                           border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(6),
                           ),
                           
                          prefixIcon: Image(image: AssetImage('images/offericon2.png'),width: 15,height: 10,),
                           hintText: '30% off  10 booking (up to EGP 150)',
                           hintStyle: TextStyle(color: Colors.grey,fontSize: 12.sp),
                           suffixIcon: Padding(
                             padding: const EdgeInsets.symmetric(horizontal: 5),
                             child: TextButton(
                               onPressed: () {},
                               style: TextButton.styleFrom(
                                 backgroundColor: Color(0xffF04C29).withOpacity(0.33),
                                 shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(20),
                                 ),
                               ),
                               child: Text(
                                 'Apply',
                                 style: TextStyle(color: Color(0xffF04C29),fontSize: 12.sp),
                               ),
                             ),
                           )
                         ),
                       ),
                     ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.only(left: 8,top: 4,bottom: 4),
                        child: Text('Booking Charges',style: TextStyle(fontSize: 16.sp,color: Colors.black),),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.only(left: 8,top: 4,bottom: 4),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('x1 Day EGP 100.0 x 1 Seat',style: TextStyle(color: Color(0xff464646),fontSize: 14.sp),),
                                Text('EGP 100.0',style:TextStyle(color: Color(0xff464646),fontSize: 14.sp),),
                              ],
                            ),
                            
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Total Due',style: TextStyle(fontSize: 14.sp,color: Color(0xffF04C29)),),
                                Text('EGP 100.0',style:TextStyle(fontSize: 14.sp,color: Color(0xffF04C29)),),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
        ),
      ),
    ) ;
  }
}